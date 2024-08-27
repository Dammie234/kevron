<?php

namespace App\Http\Controllers;
use DB;
use Str;
use Image;
use App\Course;
use App\CourseOutline;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\CourseMail;

class CourseController extends Controller
{
    public function store(Request $request){
        $this->validate($request, [
            'category' => 'required',
            'title' => 'required|string|unique:courses',
            'featured_image' => 'required',
            'assessment' => 'required',
            'certificate' => 'required',
            'description' => 'required|string'
        ]);

        $data = [
            'category_id' => $request->category,
            'title' => $request->title,
            'sub_title' => $request->sub_title,
            'slug' => Str::slug($request->title, '-'),
            'amount' => $request->amount,
            'currency' => $request->currency,
            'description' => $request->description,
            'assessment' => $request->assessment,
            'certificate' => $request->certificate,
            'duration' => $request->duration,
            'video_url' => $request->video_url,
            'calender' => $request->calender,
            'syllabus_guide' => $request->syllabus_guide,
            'study_method' => $request->study_method,
            'qualification' => $request->qualification,
            'accreditation' => $request->accreditation,
            'entry_requirements' => $request->entry_requirements,
            'qualification_lead_to' => $request->qualification_lead_to,
            'qualification_important' => $request->qualification_important,
            'quality_standards' => $request->quality_standards,
            'mode_of_study' => $request->mode_of_study,
            'assessment_note' => $request->assessment_note,
            'certification_note' => $request->certification_note,
            'regulated_qualification' => $request->regulated_qualification,
            'support' => $request->support,
            'healthcare_information' => $request->healthcare_information
        ];

        $image = $request->featured_image;
        $position = strpos($image, ';');
        $sub = substr($image, 0, $position);
        $ext = explode('/', $sub)[1];

        $image_name = Str::random(10) . "." . $ext;
        $img = Image::make($image)->resize(525,250);
        $upload_path = 'assets/img/courses/';
        $image_url = $upload_path . $image_name;
        $img->save($image_url);
        $data['featured_image'] = $image_url;


        Course::create($data);
    }
    public function index()
    {
        $courses = DB::table('courses')
                    ->leftJoin('course_categories', 'course_categories.id', '=', 'courses.category_id')
                    ->leftJoin('instructors', 'instructors.id', '=', 'courses.instructor_id')
                    ->orderBy('courses.id', 'desc')
                    ->select('courses.*', 'instructors.name', 'course_categories.title as category')
                    ->get();
        return response()->json($courses);
    }
    public function show($slug)
    {
        return response()->json(Course::where('slug', $slug)->first());
    }
    public function update(Request $request, $slug)
    {
        $this->validate($request, [
            'category' => 'required',
            'title' => 'required|string',
            'assessment' => 'required',
            'certificate' => 'required',
            'duration' => 'required|string',
            'description' => 'required|string'
        ]);
        Course::where('slug', $slug)->update([
            'category_id' => $request->category,
            'title' => $request->title,
            'sub_title' => $request->sub_title,
            'slug' => Str::slug($request->title, '-'),
            'amount' => $request->amount,
            'currency' => $request->currency,
            'description' => $request->description,
            'assessment' => $request->assessment,
            'certificate' => $request->certificate,
            'duration' => $request->duration,
            'video_url' => $request->video_url,
            'instructor_id' => $request->instructor,
            'calender' => $request->calender,
            'syllabus_guide' => $request->syllabus_guide,
            'study_method' => $request->study_method,
            'qualification' => $request->qualification,
            'accreditation' => $request->accreditation,
            'entry_requirements' => $request->entry_requirements,
            'qualification_lead_to' => $request->qualification_lead_to,
            'qualification_important' => $request->qualification_important,
            'quality_standards' => $request->quality_standards,
            'mode_of_study' => $request->mode_of_study,
            'assessment_note' => $request->assessment_note,
            'certification_note' => $request->certification_note,
            'regulated_qualification' => $request->regulated_qualification,
            'support' => $request->support,
            'healthcare_information' => $request->healthcare_information
        ]);

    }
    public function updateFeaturedImage(Request $request, $slug)
    {
        $this->validate($request, [
            'featured_image' => 'required'
        ]);
        $image = $request->featured_image;
        $position = strpos($image, ';');
        $sub = substr($image, 0, $position);
        $ext = explode('/', $sub)[1];

        $image_name = Str::random(10) . "." . $ext;
        $img = Image::make($image)->resize(525,250);
        $upload_path = 'assets/img/courses/';
        $image_url = $upload_path . $image_name;
        $success = $img->save($image_url);
        if ($success) {
            $course =  Course::where('slug', $slug)->first();
            unlink($course->featured_image);
        }
        Course::where('slug', $slug)->update([
            'featured_image' => $image_url
        ]);

    }
    public function uploadFiles(Request $request)
    {

       $slug = $request->slug;
        if ($request->calender) {

            Course::where('slug', $slug)->update([
                'calender' => $request->calender
            ]);
        }
        if ($request->syllabus_guide) {

            Course::where('slug', $slug)->update([
                'syllabus_guide' => $request->syllabus_guide
            ]);
        }
    }
    public function storeCourseOutline(Request $request)
    {
        $course_id = $request->course;
        $outlines = $request->course_outlines;
        for ($i=0; $i < count($outlines); $i++) {
            CourseOutline::create([
                'course_id' => $course_id,
                'name' => $request->course_outlines[$i],
                'level' => $request->levels[$i],
                'credit' => $request->credits[$i]
            ]);
        }

    }
    public function getCourseOutlines($slug)
    {
        $course = Course::where('slug', $slug)->first();
        return response()->json(CourseOutline::where('course_id', $course->id)->select('id','name', 'level', 'credit')->get());
    }
    public function updateCourseOutline(Request $request, $id)
    {
        CourseOutline::where('id', $id)->update([
            'name' => $request->name,
            'level' => $request->level,
            'credit' => $request->credit
        ]);
    }
    public function destroyCourseoutline($id)
    {
        CourseOutline::where('id', $id)->delete();
    }
    function processCourse(Request $request) {
        $this->validate($request, [
            'name' => 'required|string',
            'email' => 'required|email',
            'phone' => 'required|string',
            'training_type' => 'required'
        ]);
        $data = [
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'training_type' => $request->training_type,
            'course' => $request->course,
            'message' => $request->message
        ];
        $emails = [
            'joy.dammie@yahoo.com', 'joy.dammie@gmail.com'
        ];
        foreach ($emails as $email) {
            Mail::to($email)->send(new CourseMail($data));
        }

    }

}
