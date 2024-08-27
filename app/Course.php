<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;
    protected $fillable = ['category_id', 'title', 'sub_title', 'slug', 'amount', 'currency', 'description', 'instructor_id', 'featured_image', 'certificate', 'duration', 'assessment', 'calender', 'video_url', 'syllabus_guide', 'study_method', 'qualification', 'accreditation', 'entry_requirements', 'qualification_lead_to', 'qualification_important', 'quality_standards', 'mode_of_study', 'assessment_note', 'certification_note', 'regulated_qualification', 'support', 'healthcare_information'];
}
