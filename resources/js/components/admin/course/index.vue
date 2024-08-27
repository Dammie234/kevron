<template>
  <div>
    <admin-nav active="courses"></admin-nav>
    <page-title title="Courses"></page-title>
    <section class="pt-100 pb-180">
      <div class="container">
        <div class="row">
          <div class="col-12 col-lg-12" v-if="add_course">
            <div class="card">
              <div class="card-header p-3">
                <h3 class="float-start">Add Course</h3>
                <button class="float-end btn btn-sm default-btn" @click="addCourse">
                  Close Course
                </button>
              </div>
              <div class="card-body">
                <form @submit.prevent="store" enctype="multipart/form-data">
                  <div class="row" :disabled="loading">
                    <div class="form-group col-12 col-lg-3">
                      <label for="category" class="form-label">Category</label
                      ><select
                        v-model="form.category"
                        id="category"
                        placeholder="Select Course Category"
                        class="form-control"
                      >
                        <option value="">Select Course Category</option>
                        <option v-for="cat in categories" :key="cat.id" :value="cat.id">
                          {{ cat.title }}
                        </option></select
                      ><small class="text-danger" v-if="errors.category">
                        {{ errors.category[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-5">
                      <label for="title" class="form-label">Course Title</label
                      ><input
                        type="text"
                        v-model="form.title"
                        id="title"
                        placeholder="Enter Course Title"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.title">
                        {{ errors.title[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-4">
                      <label for="sub_title" class="form-label">Course Sub Title</label
                      ><input
                        type="text"
                        v-model="form.sub_title"
                        id="sub_title"
                        placeholder="Enter Course Sub Title"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.sub_title">
                        {{ errors.sub_title[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-3 mt-3">
                      <label for="amount" class="form-label">Amount</label
                      ><input
                        type="number"
                        v-model="form.amount"
                        id="amount"
                        placeholder="Enter amount. Space or comma not allowed"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.amount">
                        {{ errors.amount[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-3 mt-3">
                      <label for="currency" class="form-label">Currency</label
                      ><select v-model="form.currency" id="currency" class="form-control">
                        <option value="Naira">Naira</option>
                        <option value="Dollar">Dollar</option>
                        <option value="Pounds">Pounds</option>
                      </select>
                      <small class="text-danger" v-if="errors.currency">
                        {{ errors.currency[0] }}
                      </small>
                    </div>

                    <div class="form-group col-12 col-lg-5 mt-5">
                      <div class="input-group mb-3">
                        <input
                          type="file"
                          class="form-control"
                          id="inputGroupFile02"
                          @change="onFileSelected"
                        />
                        <label class="input-group-text" for="inputGroupFile02"
                          >Upload Featured Image</label
                        >
                      </div>
                      <small class="text-danger" v-if="errors.featured_image">
                        {{ errors.featured_image[0] }}
                      </small>
                    </div>
                    <div class="col-12 col-lg-1 mt-5">
                      <img
                        v-if="form.featured_image"
                        :src="form.featured_image"
                        height="80px"
                        alt=""
                      />
                    </div>
                    <div class="form-group col-12 col-lg-3 mt-3">
                      <label for="certificate" class="form-label">Certificate</label
                      ><select
                        v-model="form.certificate"
                        id="certificate"
                        class="form-control"
                      >
                        <option value="">Select If Certificate will be Given</option>
                        <option value="1">Yes</option>
                        <option value="0">No</option></select
                      ><small class="text-danger" v-if="errors.certificate">
                        {{ errors.certificate[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-3 mt-3">
                      <label for="assessment" class="form-label">Assessment</label
                      ><select
                        v-model="form.assessment"
                        id="assessment"
                        class="form-control"
                      >
                        <option value="">Select Course has Assessment</option>
                        <option value="1">Yes</option>
                        <option value="0">No</option></select
                      ><small class="text-danger" v-if="errors.assessment">
                        {{ errors.assessment[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-3 mt-3">
                      <label for="duration" class="form-label">Duration</label
                      ><input
                        type="text"
                        v-model="form.duration"
                        id="duration"
                        placeholder="Enter Course Duration."
                        class="form-control"
                      /><small class="text-danger" v-if="errors.duration">
                        {{ errors.duration[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-3 mt-3">
                      <label for="video_url" class="form-label">Video URL</label
                      ><input
                        type="text"
                        v-model="form.video_url"
                        id="video_url"
                        placeholder="Enter Video URL"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.video_url">
                        {{ errors.video_url[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-5">
                      <div class="">
                        <label for="calender" class="form-label">Course Calender</label
                        ><input
                          type="text"
                          v-model="form.calender"
                          id="calender"
                          placeholder="Enter Course Calender Google Drive URL"
                          class="form-control"
                        />
                      </div>
                      <small class="text-danger" v-if="errors.calender">
                        {{ errors.calender[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-5">
                      <div class="">
                        <label for="syllabus_guide" class="form-label"
                          >Syllabus Guide</label
                        ><input
                          type="text"
                          v-model="form.syllabus_guide"
                          id="syllabus_guide"
                          placeholder="Enter Course Syllabus Guide Google Drive URL"
                          class="form-control"
                        />
                      </div>
                      <small class="text-danger" v-if="errors.syllabus_guide">
                        {{ errors.syllabus_guide[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-5">
                      <div class="">
                        <label for="study_method" class="form-label">Study Method</label
                        ><input
                          type="text"
                          v-model="form.study_method"
                          id="study_method"
                          class="form-control"
                        />
                      </div>
                      <small class="text-danger" v-if="errors.study_method">
                        {{ errors.study_method[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-5">
                      <div class="">
                        <label for="qualification" class="form-label">Qualification</label
                        ><input
                          type="text"
                          v-model="form.qualification"
                          id="qualification"
                          class="form-control"
                        />
                      </div>
                      <small class="text-danger" v-if="errors.qualification">
                        {{ errors.qualification[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="description" class="form-label">Description</label>
                      <vue-editor
                        id="description"
                        v-model="form.description"
                        :editorToolbar="customToolbar"
                      ></vue-editor>
                      <small class="text-danger" v-if="errors.description">
                        {{ errors.description[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="accreditation" class="form-label">Accreditation</label>
                      <vue-editor
                        id="accreditation"
                        v-model="form.accreditation"
                        :editorToolbar="customToolbar"
                      ></vue-editor>
                      <small class="text-danger" v-if="errors.accreditation">
                        {{ errors.accreditation[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="entry_requirements" class="form-label"
                        >Entry Requirements</label
                      >
                      <vue-editor
                        id="entry_requirements"
                        v-model="form.entry_requirements"
                        :editorToolbar="customToolbar"
                      ></vue-editor>
                      <small class="text-danger" v-if="errors.entry_requirements">
                        {{ errors.entry_requirements[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="qualification_lead_to" class="form-label"
                        >What could this qualification lead to?</label
                      >
                      <vue-editor
                        id="qualification_lead_to"
                        v-model="form.qualification_lead_to"
                        :editorToolbar="customToolbar"
                      ></vue-editor>
                      <small class="text-danger" v-if="errors.qualification_lead_to">
                        {{ errors.qualification_lead_to[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="qualification_important" class="form-label"
                        >Why is this qualification important?</label
                      >
                      <vue-editor
                        id="qualification_important"
                        v-model="form.qualification_important"
                        :editorToolbar="customToolbar"
                      ></vue-editor>
                      <small class="text-danger" v-if="errors.qualification_important">
                        {{ errors.qualification_important[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="quality_standards" class="form-label"
                        >Quality, Standards &amp; Recognitions</label
                      >
                      <vue-editor
                        id="quality_standards"
                        v-model="form.quality_standards"
                        :editorToolbar="customToolbar"
                      ></vue-editor>
                      <small class="text-danger" v-if="errors.quality_standards">
                        {{ errors.quality_standards[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="mode_of_study" class="form-label">Mode of Study</label>
                      <vue-editor
                        id="mode_of_study"
                        v-model="form.mode_of_study"
                        :editorToolbar="customToolbar"
                      ></vue-editor>
                      <small class="text-danger" v-if="errors.mode_of_study">
                        {{ errors.mode_of_study[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="assessment_note" class="form-label"
                        >Assessment Note</label
                      >
                      <vue-editor
                        id="assessment_note"
                        v-model="form.assessment_note"
                        :editorToolbar="customToolbar"
                      ></vue-editor>
                      <small class="text-danger" v-if="errors.assessment_note">
                        {{ errors.assessment_note[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="certification_note" class="form-label"
                        >Certification Note</label
                      >
                      <vue-editor
                        id="certification_note"
                        v-model="form.certification_note"
                        :editorToolbar="customToolbar"
                      ></vue-editor>
                      <small class="text-danger" v-if="errors.certification_note">
                        {{ errors.certification_note[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="regulated_qualification" class="form-label"
                        >Regulated Qualification</label
                      >
                      <vue-editor
                        id="regulated_qualification"
                        v-model="form.regulated_qualification"
                        :editorToolbar="customToolbar"
                      ></vue-editor>
                      <small class="text-danger" v-if="errors.regulated_qualification">
                        {{ errors.regulated_qualification[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="support" class="form-label"
                        >How can Kevron support you</label
                      >
                      <vue-editor
                        id="support"
                        v-model="form.support"
                        :editorToolbar="customToolbar"
                      ></vue-editor>
                      <small class="text-danger" v-if="errors.support">
                        {{ errors.support[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="healthcare_information" class="form-label"
                        >How do I get information about the Health and Care Worker
                        Visa?</label
                      >
                      <vue-editor
                        id="healthcare_information"
                        v-model="form.healthcare_information"
                        :editorToolbar="customToolbar"
                      ></vue-editor>
                      <small class="text-danger" v-if="errors.healthcare_information">
                        {{ errors.healthcare_information[0] }}
                      </small>
                    </div>

                    <div class="form-group col-6 col-lg-3">
                      <input
                        type="submit"
                        value="Add Course"
                        class="btn mt-3 default-btn"
                      />
                    </div>
                    <div class="col-6 col-lg-2">
                      <div class="clock-loader mt-3 ml-3" v-if="loading"></div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>

          <div class="col-12 col-lg-12 mt-5">
            <div class="card">
              <div class="card-header">
                <h3 class="float-start">Courses</h3>
                <button
                  class="float-end btn btn-sm default-btn"
                  v-if="!add_course"
                  @click="addCourse"
                >
                  Add Course
                </button>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th></th>
                        <th>Title</th>
                        <th>Category</th>
                        <th>Amount</th>
                        <th>Instructor</th>
                        <th>Certificate</th>
                        <th>Assessment</th>
                        <th>Duration</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="course in courses" :key="course.id">
                        <td>
                          <img :src="'../../' + course.featured_image" height="50" />
                        </td>
                        <td>{{ course.title }}</td>
                        <td>{{ course.category }}</td>
                        <td>
                          <span v-if="course.currency == 'Dollar'">&dollar;</span>
                          <span v-else-if="course.currency == 'Pounds'">&pound;</span>
                          <span v-else>&#8358;</span> {{ course.amount }}
                        </td>
                        <td>{{ course.name }}</td>
                        <td>
                          <span v-if="course.certificate == 1">Yes</span
                          ><span v-else>No</span>
                        </td>
                        <td>
                          <span v-if="course.assessment == 1">Yes</span
                          ><span v-else>No</span>
                        </td>
                        <td>{{ course.duration }}</td>
                        <td>
                          <router-link
                            :to="{
                              name: 'edit-admin-course',
                              params: { slug: course.slug },
                            }"
                            class="btn btn-primary"
                          >
                            Edit/Show
                          </router-link>
                          <router-link
                            :to="{
                              name: 'edit-featured-image-course',
                              params: { slug: course.slug },
                            }"
                            class="btn btn-primary"
                          >
                            Change Image</router-link
                          ><br />
                          <router-link
                            class="btn btn-primary mt-2"
                            :to="{
                              name: 'edit-files-course',
                              params: { slug: course.slug },
                            }"
                          >
                            Edit Calender/Syllabus
                          </router-link>
                          <router-link
                            class="btn btn-primary mt-2"
                            :to="{
                              name: 'create-course-outlines',
                              params: { slug: course.slug },
                            }"
                          >
                            Add Course Outline
                          </router-link>
                          <router-link
                            class="btn btn-primary mt-2"
                            :to="{
                              name: 'edit-course-outlines',
                              params: { slug: course.slug },
                            }"
                          >
                            Edit Course Outline
                          </router-link>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: "home",
  data() {
    return {
      token: "",
      user: "",

      categories: [],
      instructors: [],
      form: {
        category: "",
        title: "",
        sub_title: "",
        amount: "",
        discount_fee: "",
        description: "",
        instructor: "",
        featured_image: "",
        certificate: "",
        duration: "",
        calender: "",
        assessment: "",
        video_url: "",
        syllabus_guide: "",
        study_method: "",
        qualification: "",
        accreditation: "",
        entry_requirements: "",
        qualification_lead_to: "",
        qualification_important: "",
        quality_standards: "",
        mode_of_study: "",
        assessment_note: "",
        certification_note: "",
        regulated_qualification: "",
        support: "",
        healthcare_information: "",
      },
      courses: [],
      customToolbar: [
        ["bold", "italic", "underline", "strike"],
        [{ align: "" }, { align: "center" }, { align: "right" }, { align: "justify" }],
        ["blockquote", "code-block"],
        [{ list: "ordered" }, { list: "bullet" }, { list: "check" }],
        [{ indent: "-1" }, { indent: "+1" }], // outdent/indent
        ["link"],
        ["clean"],
      ],
      errors: {},
      loading: false,
      add_course: false,
    };
  },
  created() {
    this.login();
    this.getUser();
    this.getInstructors();
    this.getCourseCategories();
    this.getCourses();
  },
  methods: {
    login() {
      if (!User.loggedIn()) {
        this.$router.push({
          name: "login",
        });
      } else {
        this.token = User.token();
      }
    },

    addCourse() {
      if (!this.add_course) {
        this.add_course = true;
      } else {
        this.add_course = false;
      }
    },

    onFileSelected(event) {
      let file = event.target.files[0];
      if (file.size > 1048770) {
        Toast.fire({
          icon: "warning",
          title: "Picture is too large. Upload less than 2MB",
        });
      } else {
        let reader = new FileReader();
        reader.readAsDataURL(file);

        let type = file.type;
        let name = file.name;
        reader.onload = (event) => {
          this.form.featured_image = event.target.result;
        };
      }
    },

    getUser() {
      axios
        .get("/api/kevron/user/" + this.token, {
          headers: {
            Authorization: "Bearer " + this.token,
            Accept: "application/json",
          },
        })
        .then((response) => (this.user = response.data))
        .catch((error) => {
          console.log(error);
          if (error.response.status == 401) {
            this.$router.push({
              name: "logout",
            });
          }
        });
    },
    getInstructors() {
      axios
        .get("/api/kevron/instructor/", {
          headers: {
            Authorization: "Bearer " + this.token,
            Accept: "application/json",
          },
        })
        .then((response) => (this.instructors = response.data))
        .catch((error) => {
          console.log(error);
          if (error.response.status == 401) {
            this.$router.push({
              name: "logout",
            });
          }
        });
    },
    getCourses() {
      axios
        .get("/api/kevron/course", {
          headers: {
            Authorization: "Bearer " + this.token,
            Accept: "application/json",
          },
        })
        .then((response) => (this.courses = response.data))
        .catch((error) => {
          console.log(error);
          if (error.response.status == 401) {
            this.$router.push({
              name: "logout",
            });
          }
        });
    },

    getCourseCategories() {
      axios
        .get("/api/course-categories")
        .then((response) => (this.categories = response.data))
        .catch();
    },
    store() {
      this.loading = true;

      axios
        .post("/api/course", this.form)
        .then((res) => {
          Toast.fire({
            icon: "success",
            title: "Successfully Done",
          });
          this.add_course = false;
          this.getCourses();
          this.form = {};
        })
        .catch((error) => (this.errors = error.response.data.errors))
        .finally(() => {
          this.loading = false;
        });
    },
  },
};
</script>

<style scoped></style>
