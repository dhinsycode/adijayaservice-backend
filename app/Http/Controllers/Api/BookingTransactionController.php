<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\HomeService; 
use App\Models\BookingTransaction;
use Carbon\Carbon;
use App\Http\Requests\StoreBookingTransactionRequest;
use App\Http\Resources\Api\BookingTransactionApiResource;

//melakukan booking sama payment
class BookingTransactionController extends Controller
{
    //custom form request->melakukan validasi, kelebihan nya bisa dipake di method lain (cara lain bisa di controller)
    public function store(StoreBookingTransactionRequest $request)
    {
        //ini data dari user (file store) perlu divalidasi disini
        try{
            $validateData = $request->validated();

            if($request->hasFile('proof')){
                $filePath = $request->file('proof')->store('proofs', 'public'); //dapetin alamat foto
                $validateData['proof'] = $filePath;
            }

            //dapetin seluruh service id
            $serviceIds = $request->input('service_ids');

            if(empty($serviceIds)){
                return response()->json(['message' => 'no service selected'], 400);
            }

            //cek validasi id nya ada engga satu persatu
            $services = HomeService::whereIn('id', $serviceIds)->get();

            if($services->isEmpty()) {
                return response()->json(['message' => 'Invalid Services'], 400);
            }

            $totalPrice = $services->sum('price');
            $tax = 0.11 * $totalPrice;
            $grandTotal = $totalPrice + $tax;


            $validateData['schedule_at'] = Carbon::tomorrow()->toDateString();

            $validateData['total_amount'] = $grandTotal;
            $validateData['total_tax_amount'] = $tax;
            $validateData['sub_total'] = $totalPrice;
            $validateData['id_paid'] = false; //masih manual jdi false dulu
            $validateData['booking_trx_id'] = BookingTransaction::generateUniqueTrxId(); //pake method yg udh dibuat

            //jalanin proses nya
            $bookingTransaction = BookingTransaction::create($validateData);

            //kalau gagal
            if(!$bookingTransaction){
                return response()->json(['message' => 'Booking Transaction not created'], 500);
            }

            //kalau lancar -> kita buat detailnya
            foreach($services as $service) {
                $bookingTransaction->transactionDetails()->create([
                    'home_service_id' => $service->id,
                    'price'=> $service->price,
                ]);
            }

            //pesan berhasil terus balikin data buat ditampilin
            return new BookingTransactionApiResource($bookingTransaction->load('transactionDetails'));

        } catch (\Exception $e){
            return response()->json(['message' => 'An error occured', 'error' => $e->getMessage()], 500);

        }
    }

    //untuk melakukan proses pemeriksaan sama user udah booking blm, status transaksi dkk
    //ini perlu dibuat enpoint nya 
    public function booking_details(Request $request)
    {
     //ini bentuk form request yg di controller (tanpa custom)

        $request->validate([
            'email' => 'required|string',
            'booking_trx_id' => 'required|string',
        ]);

        $booking = BookingTransaction::where('email', $request->email)
            ->where('booking_trx_id', $request->booking_trx_id)
            ->with([
                'transactionDetails',
                'transactionDetails.homeService',
            ])
            ->first();

        if (!$booking) {
            return response()->json([
                'message' => 'Booking not found'
            ], 404);
        }

        return new BookingTransactionApiResource($booking);
    }


}
