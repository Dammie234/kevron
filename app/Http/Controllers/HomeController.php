<?php

namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\CourseCategory;

class HomeController extends Controller
{
    public function getUser($id){
        return response()->json(User::where('id', $id)->first());
    }


}
