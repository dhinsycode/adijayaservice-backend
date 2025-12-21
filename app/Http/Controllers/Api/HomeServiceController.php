<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Resources\Api\HomeServiceApiResource;
use App\Models\HomeService; 

class HomeServiceController extends Controller
{
    //method index
    public function index(Request $request)
    {
        $homeServices = HomeService::with(['category']);

        //domain.com/api/services?category_id=1
        if ($request->has('category_id')) {
            $homeServices->where('category_id', $request->input('category_id'));
        }

        if ($request->has('is_popular')) {
            $homeServices->where('is_popular', $request->input('is_popular'));
        }

        //limit engga pake where
        if ($request->has('limit')) {
            $homeServices->limit($request->input('limit'));
        }

        return HomeServiceApiResource::collection($homeServices->get());
    }

    //method show
    //domain.com/api/service/kolam-renang
    //kalau gaada return nya not found, gausa pake cek dulu (model binding)
    public function show(HomeService $homeService)
    {
        //eager load to handle n+1 query problem
        $homeService->load(['category', 'benefits', 'testimonials']);

        return new HomeServiceApiResource($homeService);
    }
}
