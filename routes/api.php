<?php

Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], function () {

    Route::post('login', 'AuthController@login');
    Route::post('signup', 'AuthController@signup');
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::post('me', 'AuthController@me');
});
Route::group([

    'middleware' => 'auth:api',
    'prefix' => 'kevron'

], function () {
    Route::get('user/{id}', 'HomeController@getUser');
    Route::get('/instructor', 'InstructorController@index');
    Route::get('/instructor/{slug}', 'InstructorController@show');
    Route::get('/course', 'CourseController@index');
    Route::get('/course/{slug}', 'CourseController@show');
    Route::get('/course-outlines/{slug}', 'CourseController@getCourseOutlines');
    Route::get('/project', 'ProjectController@index');
    Route::get('/project/{slug}', 'ProjectController@show');
    Route::get('/category', 'CategoryController@index');
    Route::get('/category/{slug}', 'CategoryController@show');
    Route::get('/post', 'PostController@index');
    Route::get('/post/{slug}', 'PostController@show');
});

Route::get('/category', 'CategoryController@index');
Route::get('/post', 'PostController@index');
Route::get('/post/{slug}', 'PostController@show');
Route::get('/category-posts/{slug}', 'PostController@categoryPosts');

Route::get('/course-categories', 'FrontendController@courseCategories');
Route::get('/course-category/{slug}', 'FrontendController@courseCategory');
Route::get('/courses/{slug}', 'FrontendController@courses');
Route::get('/course/{slug}', 'FrontendController@course');
Route::get('/course-outlines/{slug}', 'FrontendController@courseOutlines');
Route::get('/project', 'FrontendController@projects');
Route::get('/project/{slug}', 'FrontendController@project');
Route::get('/few-projects', 'FrontendController@fewProjects');
Route::get('/set-policy', 'FrontendController@setPolicy');
Route::get('/policy', 'FrontendController@getPolicy');
Route::post('/process-contact', 'FrontendController@processContact');

Route::post('/instructor', 'InstructorController@store');
Route::patch('/instructor/{slug}', 'InstructorController@update');
Route::patch('/instructor-profile-image/{slug}', 'InstructorController@updateProfileImage');

Route::post('/course', 'CourseController@store');
Route::patch('/course/{slug}', 'CourseController@update');
Route::patch('/course-featured_image/{slug}', 'CourseController@updateFeaturedImage');
Route::post('/upload-files', 'CourseController@uploadFiles');
Route::post('/course-outline', 'CourseController@storeCourseOutline');
Route::patch('/update-course-outline/{id}', 'CourseController@updateCourseOutline');
Route::delete('/course-outlines/{id}', 'CourseController@destroyCourseoutline');
Route::get('/course', 'CourseController@index');
Route::post('/process-enquiry', 'CourseController@processCourse');

Route::post('/project', 'ProjectController@store');
Route::patch('/project/{slug}', 'ProjectController@update');
Route::patch('/project-images/{slug}', 'ProjectController@updateImages');
Route::delete('/project/{id}', 'ProjectController@destroy');

Route::post('/category', 'CategoryController@store');
Route::patch('/category/{slug}', 'CategoryController@update');

Route::post('/post', 'PostController@store');
Route::patch('/post/{slug}', 'PostController@update');
Route::delete('/post/{id}', 'PostController@destroy');
