<?php

namespace App\Http\Controllers;
use Str;
use Image;
use App\Instructor;
use Illuminate\Http\Request;

class InstructorController extends Controller
{
    public function store(Request $request){
        $this->validate($request, [
            'name' => 'required|string|unique:instructors',
            'qualifications' => 'required|string',
            'email' => 'required|email|unique:instructors',
            
        ]);
        $image = $request->profile_picture;
        $position = strpos($image, ';');
        $sub = substr($image, 0, $position);
        $ext = explode('/', $sub)[1];

        $image_name = time() . "." . $ext;
        $img = Image::make($image)->resize(300,300);
        $upload_path = 'assets/img/instructors/';
        $image_url = $upload_path . $image_name;
        $img->save($image_url);

        Instructor::create([
            'name' => $request->name,
            'slug' => Str::slug($request->name, '-'),
            'qualifications' => $request->qualifications,
            'email' => $request->email,
            'facebook' => $request->facebook,
            'twitter' => $request->twitter,
            'linkedin' => $request->linkedin,
            'about' => $request->about,
            'profile_picture' => $image_url
        ]);
    }
    public function index(){
        return response()->json(Instructor::all());
    }
    public function show($slug){
        return response()->json(Instructor::where('slug', $slug)->first());
    }
    public function update(Request $request, $slug){
        $this->validate($request, [
            'name' => 'required|string',
            'qualifications' => 'required|string',
            'email' => 'required|email'
        ]);
        Instructor::where('slug', $slug)->update([
            'name' => $request->name,
            'slug' => Str::slug($request->name, '-'),
            'qualifications' => $request->qualifications,
            'email' => $request->email,
            'facebook' => $request->facebook,
            'twitter' => $request->twitter,
            'linkedin' => $request->linkedin,
            'about' => $request->about
        ]);
    }
    public function updateProfileImage(Request $request, $slug)
    {
        
        $data = [];
        $instructor = Instructor::where('slug', $slug)->first();
        $image = $request->profile_picture;
        $position = strpos($image, ';');
        $sub = substr($image, 0, $position);
        $ext = explode('/', $sub)[1];

        $image_name = time() . "." . $ext;
        $img = Image::make($image)->resize(300,300);
        $upload_path = 'assets/img/instructors/';
        $image_url = $upload_path . $image_name;
        $success = $img->save($image_url);
        if ($success) {
            //unlink($instructor->profile_image);
            $data['profile_picture'] = $image_url;
        }
        Instructor::where('slug', $slug)->update($data);
        
    }
}
