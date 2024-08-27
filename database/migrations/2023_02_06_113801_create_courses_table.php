<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->id('id');
            $table->bigInteger('category_id')->unsigned();
            $table->string('title');
            $table->string('slug');
            $table->string('amount');
            $table->string('discount_fee')->nullable();
            $table->mediumText('description');
            $table->string('instructor_id');
            $table->string('featured_image');
            $table->boolean('certificate')->nullable();
            $table->string('duration');
            $table->boolean('assessment')->nullable();
            $table->foreign('category_id')->references('id')->on('course_categories')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('courses');
    }
}
