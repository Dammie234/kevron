<?php

namespace App\Http\Controllers;
use Str;
use Image;
use App\Project;
use Illuminate\Http\Request;

class ProjectController extends Controller
{
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|string|unique:projects',
            'client_name' => 'required|string',
            'commence_date' => 'required|date',
            'location' => 'required|string',
            'main_services' => 'required|string',
            'short_description' => 'required|string',
            'description' => 'required|string',
            'featured_image' => 'required',

        ]);
        $data = [
            'title' => $request->title,
            'slug' => Str::slug($request->title, '-'),
            'client_name' => $request->client_name,
            'commence_date' => $request->commence_date,
            'completed_date' => $request->completed_date,
            'location' => $request->location,
            'main_services' => $request->main_services,
            'short_description' => $request->short_description,
            'description' => $request->description
        ];
        function uploadImage($image)
        {
            $position = strpos($image, ';');
            $sub = substr($image, 0, $position);
            $ext = explode('/', $sub)[1];

            $image_name = Str::random(10) . "." . $ext;
            $img = Image::make($image)->resize(1920,1280);
            $upload_path = 'assets/img/projects/';
            $image_url = $upload_path . $image_name;
            $img->save($image_url);
            return $image_url;
        }


        $data['featured_image'] = uploadImage($request->featured_image);

        Project::create($data);
    }
    public function index()
    {
        return response()->json(Project::all());
    }
    public function show($slug)
    {
        return response()->json(Project::where('slug', $slug)->first());
    }
    public function update(Request $request, $slug)
    {
        $this->validate($request, [
            'title' => 'required|string',
            'client_name' => 'required|string',
            'commence_date' => 'required|date',
            'location' => 'required|string',
            'main_services' => 'required|string',
            'short_description' => 'required|string',
            'description' => 'required|string',
        ]);
        Project::where('slug', $slug)->update([
            'title' => $request->title,
            'slug' => Str::slug($request->title, '-'),
            'client_name' => $request->client_name,
            'commence_date' => $request->commence_date,
            'completed_date' => $request->completed_date,
            'location' => $request->location,
            'main_services' => $request->main_services,
            'short_description' => $request->short_description,
            'description' => $request->description
        ]);
    }
    public function updateImages(Request $request, $slug)
    {

        $project = Project::where('slug', $slug)->first();
        function uploadImage($image)
        {
            $position = strpos($image, ';');
            $sub = substr($image, 0, $position);
            $ext = explode('/', $sub)[1];

            $image_name = Str::random(10) . "." . $ext;
            $img = Image::make($image)->resize(1920,1280);
            $upload_path = 'assets/img/projects/';
            $image_url = $upload_path . $image_name;
            $success = $img->save($image_url);
            if ($success) {
                if (isset($project->featured_image)) {
                    unlink($project->featured_image);
                }
            }
            return $image_url;
        }
        if (isset($request->featured_image)) {
            $data['featured_image'] = uploadImage($request->featured_image);
        }

        Project::where('slug', $slug)->update($data);
    }
    function destroy($id) {
        $project = Project::where('id', $id)->first();
        if ($project->featured_image) {
            unlink($project->featured_image);
        }
        Project::where('id', $id)->delete();
    }
}
