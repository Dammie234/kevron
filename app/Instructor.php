<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Instructor extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'slug', 'qualifications', 'email', 'about', 'facebook', 'twitter', 'linkedin', 'profile_picture'];
}
