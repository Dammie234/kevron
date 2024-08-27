<?php

namespace App\Http\Controllers;
use Str;
use App\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|string|unique:categories'
        ]);
        Category::create([
            'title' => $request->title,
            'slug' => Str::slug($request->title, '-'),
            'counts' => 0
        ]);
    }
    public function index()
    {
        return response()->json(Category::all());
    }
    public function show($slug)
    {
        return response()->json(Category::where('slug', $slug)->first());
    }
    public function update(Request $request, $slug)
    {
        $this->validate($request, [
            'title' => 'required|string'
        ]);
        Category::where('slug', $slug)->update([
            'title' => $request->title,
            'slug' => Str::slug($request->title, '-'),
        ]);

    }
}
