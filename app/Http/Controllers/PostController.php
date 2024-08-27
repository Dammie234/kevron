<?php

namespace App\Http\Controllers;
use DB;
use Str;
use Image;
use App\Post;
use App\Category;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|string|unique:posts',
            'category' => 'required',
            'content' => 'required|string',
            'featured_image' => 'required'
        ]);
        $data = [
            'category_id' => $request->category,
            'title' => $request->title,
            'slug' => Str::slug($request->title, '-'),
            'content' => $request->content
        ];
        $image = $request->featured_image;
        $position = strpos($image, ';');
        $sub = substr($image, 0, $position);
        $ext = explode('/', $sub)[1];

        $image_name = Str::random(10) . "." . $ext;
        $img = Image::make($image)->resize(525,250);
        $upload_path = 'assets/img/posts/';
        $image_url = $upload_path . $image_name;
        $img->save($image_url);
        $data['featured_image'] = $image_url;

        Post::create($data);
        $category = Category::where('id', $request->category)->first();
        Category::where('id', $request->category)->update([
            'counts' => ($category->counts + 1)
        ]);
    }
    public function index()
    {
        $posts = DB::table('posts')
                    ->leftJoin('categories', 'categories.id', '=', 'posts.category_id')
                    ->select('posts.*', 'categories.title as category')
                    ->orderBy('posts.id', 'desc')
                    ->get();
        return response()->json($posts);
    }
    public function show($slug)
    {
        return response()->json(Post::where('slug', $slug)->first());
    }
    public function update(Request $request, $slug)
    {
        $this->validate($request, [
            'title' => 'required|string',
            'category' => 'required',
            'content' => 'required|string'
        ]);
        Post::where('slug', $slug)->update([
            'title' => $request->title,
            'category_id' => $request->category,
            'content' => $request->content
        ]);
        if ($request->new_featured_image) {
            $post = Post::where('slug', $slug)->first();
            unlink($post->featured_image);
            $image = $request->new_featured_image;
            $position = strpos($image, ';');
            $sub = substr($image, 0, $position);
            $ext = explode('/', $sub)[1];

            $image_name = Str::random(10) . "." . $ext;
            $img = Image::make($image)->resize(525,250);
            $upload_path = 'assets/img/posts/';
            $image_url = $upload_path . $image_name;
            $img->save($image_url);
            Post::where('slug', $slug)->update([
                'featured_image' => $image_url
            ]);
        }
    }
    function destroy($id) {
        $post = Post::where('id', $id)->first();
        $category = Category::where('id', $post->category_id)->first();
        Category::where('id', $post->category_id)->update([
            'counts' => $category->counts - 1
        ]);
        if ($post->featured_image) {
            unlink($post->featured_image);
        }
        $post->delete();
    }
    function categoryPosts($slug) {
        $category = Category::where('slug', $slug)->first();
        $posts = DB::table('posts')
                    ->leftJoin('categories', 'categories.id', '=', 'posts.category_id')
                    ->where('posts.category_id', $category->id)
                    ->select('posts.*', 'categories.title as category')
                    ->get();
        return response()->json(['posts' => $posts, 'category' => $category]);
    }
}
