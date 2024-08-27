<?php

namespace App\Http\Controllers;
use DB;
use App\Project;
use App\Course;
use App\CourseOutline;
use App\CourseCategory;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactMail;

class FrontendController extends Controller
{
    public function courseCategories()
    {
        $courses = CourseCategory::all();
        return response()->json($courses);
    }
    public function courseCategory($slug)
    {
        return response()->json(CourseCategory::where('slug', $slug)->first());
    }
    public function courses($slug)
    {
        $category = CourseCategory::where('slug', $slug)->first();
        $courses = DB::table('courses')
                        ->where('courses.category_id', $category->id)
                        ->select('courses.*')
                        ->get();
        return response()->json($courses);
    }
    public function course($slug)
    {
        $course = DB::table('courses')
                    ->leftJoin('instructors', 'instructors.id', '=', 'courses.instructor_id')
                    ->select('courses.*', 'instructors.name', 'instructors.profile_picture', 'instructors.qualifications')
                    ->where('courses.slug', $slug)
                    ->first();
        return response()->json($course);
    }
   public function courseOutlines($slug)
   {
    $course = Course::where('slug', $slug)->first();
    $outlines = CourseOutline::where([['course_id', '=', $course->id], ['name', '!=', null ]])->get();
    return response()->json($outlines);
   }
   public function projects()
   {
    return response()->json(Project::orderBy('id', 'desc')->get());
   }
   public function project($slug)
   {
        return response()->json(Project::where('slug', $slug)->first());
   }
   public function fewProjects()
   {
    return response()->json(Project::orderBy('id', 'desc')->take(3)->get());
   }
   function setPolicy(Request $request) {
        $minutes = 10080;
        $policy = true;
        $response = new Response('Set Cookie');
        $response->withCookie(cookie('policy', $policy, $minutes));
        return $response;
    }
    function getPolicy(Request $request) {
        if ($request->cookie("policy")) {
            $policy = $request->cookie('policy');
        }else{
            $policy = false;
        }
        return response()->json($policy);
    }
    function processContact(Request $request) {
        $this->validate($request, [
            'name' => 'required|string',
            'email' => 'required|email',
            'phone' => 'required|string',
            'subject' => 'required|string'
        ]);
        $data = [
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'subject' => $request->subject,
            'message' => $request->message
        ];
         $emails = [
            'joy.dammie@yahoo.com', 'joy.dammie@gmail.com'
        ];
        foreach ($emails as $email) {
            Mail::to($email)->send(new ContactMail($data));
        }
    }

}
