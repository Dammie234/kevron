<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;
    protected $fillable = ['title', 'slug', 'location', 'commence_date', 'completed_date', 'client_name', 'main_services', 'featured_image', 'short_description', 'description' ];
}
