<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Resources\Api\CategoryApiResource;
use App\Models\Category;

class CategoryController extends Controller
{
    //
    //method index
    public function index(Request $request)
    {
        $categories = Category::withCount(['homeServices']);

       
        //limit engga pake where
        if ($request->has('limit')) {
            $categories->limit($request->input('limit'));
        }

        return CategoryApiResource::collection($categories->get());
    }

    //method show
    //domain.com/api/categories/kolam-renang
    //kalau gaada return nya not found, gausa pake cek dulu (model binding)
    public function show(Category $category)
    {
        //eager load to handle n+1 query problem
        $category->load(['homeServices', 'popularServices']);
        $category->loadCount(['homeServices']);

        return new CategoryApiResource($category);
    }
}
