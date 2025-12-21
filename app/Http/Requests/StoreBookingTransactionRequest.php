<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreBookingTransactionRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            //sisanya engga di taro biar engga di manipulasi
            //nanti di tambahinnya di controller
            'name'=> 'required|string|max:255',
            'phone'=> 'required|string|max:255',
            'email' => 'required|string|max:255',
            'city' => 'required|string|max:255',
            'address' => 'required|string|max:255',
            'post_code' => 'required|string|max:255',
            'started_time'=> 'required|date_format:H:i',
            'proof' => 'required|file|mimes:png,jpg,jpeg|max:2048',
            'service_ids' => 'required|array', //ada s karena nanti dari cart - banyak data = inni array
            'service_ids.*' => 'integer|exists:home_services,id', //ini pecahan array tadi ngecek integer sama validasi id
        ];
    }
}
