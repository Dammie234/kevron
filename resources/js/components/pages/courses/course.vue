<template>
  <div>
    <page-header></page-header>
    <page-nav active="courses"></page-nav>
    <!-- Page Banner -->
    <div
      class="page-banner banner-bg-one"
      style="background-image: url(../../assets/img/training.jpg)"
    >
      <div class="container">
        <div class="banner-text">
          <h1 class="garamond page-title" style="font-size: 65px">
            {{ category.title }}
          </h1>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">
                {{ category.title }}
              </li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
    <!-- End Page Banner -->

    <section class="single-course-area pb-180">
      <div class="container">
        <div class="row mt-5">
          <div class="col-lg-8">
            <div class="single-course-header">
              <h3>{{ course.title }}</h3>
              <h5 v-if="course.sub_title">{{ course.sub_title }}</h5>
            </div>

            <div class="single-preview-img">
              <img :src="'../../' + course.featured_image" alt="Event Image" />
            </div>

            <div class="single-event-description mb-30">
              <h3>Course Description</h3>
              <p v-html="course.description"></p>
              <div class="mt-4" v-if="course.accreditation">
                <h4>Accreditation</h4>
                <p v-html="course.accreditation"></p>
              </div>
              <div class="mt-4" v-if="course.qualification_lead_to">
                <h4>What could this qualification lead to?</h4>
                <p v-html="course.qualification_lead_to"></p>
              </div>
              <div class="mt-4" v-if="course.entry_requirements">
                <h4>Entry Requirements</h4>
                <p v-html="course.entry_requirements"></p>
              </div>
              <div class="mt-4" v-if="course.quality_standards">
                <h4>Quality, Standards and Recognitions</h4>
                <p v-html="course.quality_standards"></p>
              </div>
              <div class="mt-4" v-if="course.qualification_important">
                <h4>
                  Why is this qualification important and what is my career / work
                  progression?
                </h4>
                <p v-html="course.qualification_important"></p>
              </div>
              <div class="mt-4" v-if="course.mode_of_study">
                <h4>Mode of Study and Module Structure</h4>
                <p v-html="course.mode_of_study"></p>
              </div>
              <div class="mt-4" v-if="course.assessment_note">
                <h4>Assessment</h4>
                <p v-html="course.assessment_note"></p>
              </div>
              <div class="mt-4" v-if="course.certification_note">
                <h4>Certification</h4>
                <p v-html="course.certification_note"></p>
              </div>
              <div class="mt-4" v-if="course.regulated_information">
                <h4>What is a ‘regulated qualification’?</h4>
                <p v-html="course.regulated_information"></p>
              </div>
              <div class="mt-4" v-if="course.support">
                <h4>How can Kevron Support You?</h4>
                <p v-html="course.support"></p>
              </div>
              <div class="mt-4" v-if="course.healthcare_information">
                <h4>How do I get information about the Health and Care Worker Visa?</h4>
                <p v-html="course.healthcare_information"></p>
              </div>
            </div>

            <div class="row mb-30">
              <div class="col-md-1 col-lg-1">
                <ul class="single-event-tags">
                  <li>Share:</li>
                </ul>
              </div>

              <div class="col-md-11 col-lg-11">
                <ShareNetwork
                  v-for="network in networks"
                  :network="network.network"
                  :key="network.network"
                  :style="{
                    backgroundColor: network.color,
                    color: '#fff',
                    padding: '7px',
                    marginRight: '7px',
                  }"
                  :url="'https://kevrongroup.com/' + course_slug + '/' + slug"
                  :title="course.title"
                  :description="course.description"
                  :twitterUser="sharing.twitterUser"
                >
                  <i :class="network.icon"></i>
                  <span>{{ network.name }}</span>
                </ShareNetwork>
              </div>
            </div>

            <div class="course-syllabus">
              <ul class="course-accordion mt-30">
                <li class="course-accordion-list">
                  <h4 class="ca-section-title active">Course Outlines</h4>

                  <div class="course-accordion-content" style="display: block">
                    <table class="course-section-content table">
                      <tr
                        class="course-lesson my-2"
                        v-for="(outline, index) in outlines"
                        :key="index"
                      >
                        <td class="number">{{ index + 1 }}.</td>
                        <td>
                          <a href="#" class="lesson-title">{{ outline.name }}</a>
                        </td>
                        <td v-if="outline.level">{{ outline.level }} Level</td>
                        <td v-if="outline.credit">{{ outline.credit }} Credit</td>
                      </tr>
                    </table>
                  </div>
                </li>

                <li class="course-accordion-list" v-if="course.video_url">
                  <h4 class="ca-section-title">Course Short Video</h4>

                  <div class="course-accordion-content" v-if="course.video_url">
                    <iframe
                      width="100%"
                      height="386"
                      :src="course.video_url"
                      frameborder="0"
                      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                      allowfullscreen
                    ></iframe>
                  </div>
                </li>

                <li
                  class="course-accordion-list"
                  v-if="course.calender || course.syllabus_guide"
                >
                  <h4 class="ca-section-title">Course Syllabus Guide &amp; Calender</h4>

                  <div class="course-accordion-content">
                    <ul class="course-section-content">
                      <li class="course-lesson" v-if="course.syllabus_guide">
                        <a
                          :href="course.syllabus_guide"
                          target="_blank"
                          class="lesson-title"
                          >View &amp; Download Course Syllabus Guide</a
                        >s
                      </li>

                      <li class="course-lesson" v-if="course.calender">
                        <a :href="course.calender" target="_blank" class="lesson-title"
                          >View &amp; Download Calender</a
                        >
                      </li>
                    </ul>
                  </div>
                </li>
              </ul>
            </div>
            <div class="comment-form-area register-area mt-30">
              <h3 class="title">Register For This Course</h3>

              <div class="comment-form">
                <form @submit.prevent="processCourse">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label for="full_name" class="form-label">Full Name</label>
                        <input
                          type="text"
                          class="form-control"
                          id="full_name"
                          v-model="form.name"
                          placeholder="Enter Full Name"
                        />
                      </div>
                    </div>

                    <div class="col-lg-6">
                      <div class="form-group">
                        <label for="email" class="form-label">Email Address</label>
                        <input
                          type="email"
                          class="form-control"
                          id="email"
                          v-model="form.email"
                          placeholder="Enter email"
                        />
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label for="phone" class="form-label">Phone Number</label>
                        <input
                          type="text"
                          class="form-control"
                          id="phone"
                          v-model="form.phone"
                          placeholder="Enter Phone Number"
                        />
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label for="course">Course</label>
                        <input
                          type="text"
                          disabled
                          class="form-control"
                          id="course"
                          v-model="course.title"
                        />
                      </div>
                    </div>
                    <div class="col-lg-12">
                      <div class="form-group">
                        <label for="training_type" class="form-label"
                          >Training Type</label
                        >
                        <select
                          name=""
                          id="training_type"
                          class="form-control"
                          v-model="form.training_type"
                        >
                          <option value="">Select your Training Type</option>
                          <option value="Classroom">Classroom</option>
                          <option value="Virtual via Zoom">Virtual via Zoom</option>
                          <option value="E-learning">E-learning</option>
                          <option value="Office/Home/In-Venue">
                            Office/Home/In-Venue
                          </option>
                        </select>
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="question" class="form-label"
                      >Do you have a question about our Course? If Yes, type it
                      below?</label
                    >
                    <textarea
                      class="form-control"
                      id="question"
                      rows="5"
                      v-model="form.message"
                      placeholder="Enter questions"
                    ></textarea>
                  </div>
                  <div class="row justify-content-center">
                    <div class="col-lg-2">
                      <button type="submit" class="btn default-btn">Submit</button>
                    </div>
                    <div class="col-lg-1">
                      <div class="clock-loader" v-if="loading"></div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="single-course-info">
              <h3 class="title">Course Features</h3>
              <ul>
                <li>
                  <i class="icofont-check-alt"></i>
                  <span class="label">Duration</span>
                  <span class="date">{{ course.duration }}</span>
                </li>
                <li>
                  <i class="icofont-check-alt"></i>
                  <span class="label">Language</span>
                  <span class="date">English</span>
                </li>

                <li>
                  <i class="icofont-check-alt"></i>
                  <span class="label">Assessments</span>
                  <span class="date">
                    <span v-if="course.assessment">Yes</span><span v-else>No</span>
                  </span>
                </li>
                <li>
                  <i class="icofont-check-alt"></i>
                  <span class="label">Certificate</span>
                  <span class="date">
                    <span v-if="course.certificate">Yes</span><span v-else>No</span>
                  </span>
                </li>
                <li v-if="course.study_method">
                  <i class="icofont-check-alt"></i>
                  <span class="label">Study Method</span>
                  <span class="date">{{ course.study_method }}</span>
                </li>
                <li v-if="course.qualification">
                  <i class="icofont-check-alt"></i>
                  <span class="label">Qualification</span>
                  <span class="date">{{ course.qualification }}</span>
                </li>
                <li>
                  <i class="icofont-check-alt"></i>
                  <span class="label">Skill level</span>
                  <span class="date">All level</span>
                </li>
              </ul>
              <div class="se-info-foot" v-if="course.amount">
                <div class="price">
                  <span v-if="course.currency == 'Dollar'">&dollar;</span>
                  <span v-else-if="course.currency == 'Pounds'">&pound;</span>
                  <span v-else>&#8358;</span>{{ course.amount }}
                </div>
                <a href="#" class="default-btn">Enroll</a>
              </div>
            </div>
            <div class="mt-30">
              <Courses :active="course_slug" />
            </div>

            <div class="contact">
              <h2>Need Help? We Are Here To Help You</h2>
              <h5 class="mt-30 text-white text-center" style="font-size: 22px">
                Contact us at <br />
                contact@kevrongroup.com
              </h5>
            </div>
          </div>
        </div>
      </div>
    </section>
    <page-footer></page-footer>
  </div>
</template>
<script>
import Courses from "../../includes/courses.vue";
export default {
  name: "courses",
  components: { Courses },
  mounted() {
    window.scrollTo(0, 0);
  },
  data() {
    return {
      courses: [],
      category: "",
      loading: false,
      course: "",
      categories: [],
      outlines: [],
      form: {
        name: null,
        email: null,
        phone: null,
        course: null,
        training_type: null,
        message: null,
      },
      sharing: {
        title: "",
        description: "",
        twitterUser: "youyuxi",
      },
      networks: [
        { network: "email", name: "Email", icon: "icofont-envelope", color: "#333333" },
        {
          network: "facebook",
          name: "Facebook",
          icon: "icofont-facebook",
          color: "#1877f2",
        },
        {
          network: "linkedin",
          name: "LinkedIn",
          icon: "icofont-linkedin",
          color: "#007bb5",
        },
        {
          network: "messenger",
          name: "Messenger",
          icon: "icofont-facebook-messenger",
          color: "#0084ff",
        },
        {
          network: "skype",
          name: "Skype",
          icon: "icofont-skype",
          color: "#00aff0",
          white: "#fff",
        },
        {
          network: "twitter",
          name: "Twitter",
          icon: "icofont-twitter",
          color: "#1da1f2",
        },
        {
          network: "whatsapp",
          name: "Whatsapp",
          icon: "icofont-whatsapp",
          color: "#25d366",
        },
      ],
    };
  },
  created() {
    this.getCourseCategory();
    this.getCourses();
    this.getCourse();
    this.getCourseCategories();
    this.getCourseOutlines();
  },
  methods: {
    getCourseCategory() {
      let slug = this.$route.params.course_slug;
      axios
        .get("/api/course-category/" + slug)
        .then((response) => (this.category = response.data))
        .catch();
    },
    getCourses() {
      let slug = this.$route.params.course_slug;
      axios
        .get("/api/courses/" + slug)
        .then((response) => (this.courses = response.data))
        .catch();
    },
    getCourse() {
      let slug = this.$route.params.slug;
      axios
        .get("/api/course/" + slug)
        .then((response) => (this.course = response.data))
        .catch();
    },
    getCourseCategories() {
      axios
        .get("/api/course-categories")
        .then((response) => (this.categories = response.data))
        .catch();
    },
    getCourseOutlines() {
      let slug = this.$route.params.slug;
      axios
        .get("/api/course-outlines/" + slug)
        .then((response) => (this.outlines = response.data))
        .catch();
    },
    processCourse() {
      this.loading = true;
      this.form.course = this.course.title;
      axios
        .post("/api/process-enquiry", this.form)
        .then((res) => {
          Toast.fire({
            icon: "success",
            title: "Form Successfully Delivered",
          });
          window.location.href = "/";
        })
        .catch((error) => (this.errors = error.response.data.errors))
        .finally(() => {
          this.loading = false;
        });
    },
  },
};
</script>
<style scoped>
.list li {
  list-style: none;
}

.pr-3 {
  padding-right: 1rem !important;
}

.pb-3 {
  padding-bottom: 1rem !important;
}

.pl-3 {
  padding-left: 1rem !important;
}

.contact {
  width: 100%;

  background: #291770;
  margin-top: 30px;
  padding: 80px 20px;
}

.contact h2,
.contact h3 {
  color: #fff;
  text-align: center;
  font-weight: bold;
}

.register-area {
  background-color: #fcfcfc;
  padding: 25px;
}
</style>
