<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseOutline extends Model
{
    use HasFactory;
    protected $fillable = ['course_id', 'name', 'level', 'credit'];
}
