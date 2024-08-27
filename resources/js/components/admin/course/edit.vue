<template>
  <div>
    <admin-nav active="courses"></admin-nav>
    <page-title title="Courses"></page-title>
    <section class="pt-100 pb-180">
      <div class="container">
        <div class="row">
          <div class="col-12 col-lg-12">
            <div class="card">
              <div class="card-header p-3">
                <h3 class="float-start">Edit {{ course.title }}</h3>
              </div>
              <div class="card-body">
                <form @submit.prevent="update" enctype="multipart/form-data">
                  <div class="row" :disabled="loading">
                    <div class="form-group col-12 col-lg-2">
                      <label for="category" class="form-label">Category</label
                      ><select
                        v-model="course.category"
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
                        v-model="course.title"
                        id="title"
                        placeholder="Enter Course Title"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.title">
                        {{ errors.title[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-5">
                      <label for="sub_title" class="form-label">Course Sub Title</label
                      ><input
                        type="text"
                        v-model="course.sub_title"
                        id="sub_title"
                        placeholder="Enter Course Sub Title"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.sub_title">
                        {{ errors.sub_title[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-2 mt-3">
                      <label for="amount" class="form-label">Amount</label
                      ><input
                        type="number"
                        v-model="course.amount"
                        id="amount"
                        placeholder="Enter amount. Space or comma not allowed"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.amount">
                        {{ errors.amount[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-3 mt-3">
                      <label for="currency" class="form-label">Currency</label
                      ><select
                        v-model="course.currency"
                        id="currency"
                        class="form-control"
                      >
                        <option value="Naira">Naira</option>
                        <option value="Dollar">Dollar</option>
                        <option value="Pounds">Pounds</option>
                      </select>
                      <small class="text-danger" v-if="errors.currency">
                        {{ errors.currency[0] }}
                      </small>
                    </div>

                    <div class="form-group col-12 col-lg-2 mt-3">
                      <label for="certificate" class="form-label">Certificate</label
                      ><select
                        v-model="course.certificate"
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
                    <div class="form-group col-12 col-lg-2 mt-3">
                      <label for="assessment" class="form-label">Assessment</label
                      ><select
                        v-model="course.assessment"
                        id="assessment"
                        class="form-control"
                      >
                        <option value="">Select Course has Assessment</option>
                        <option value="1">Yes</option>
                        <option value="0">No Exam</option></select
                      ><small class="text-danger" v-if="errors.assessment">
                        {{ errors.assessment[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-3 mt-3">
                      <label for="duration" class="form-label">Duration</label
                      ><input
                        type="text"
                        v-model="course.duration"
                        id="duration"
                        placeholder="Enter Course Duration."
                        class="form-control"
                      /><small class="text-danger" v-if="errors.duration">
                        {{ errors.duration[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-4 mt-3">
                      <label for="video_url" class="form-label">Video URL</label
                      ><input
                        type="text"
                        v-model="course.video_url"
                        id="video_url"
                        placeholder="Enter Video URL"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.video_url">
                        {{ errors.video_url[0] }}
                      </small>
                    </div>

                    <div class="form-group col-12 col-lg-4 mt-3">
                      <div class="">
                        <label for="study_method" class="form-label">Study Method</label
                        ><input
                          type="text"
                          v-model="course.study_method"
                          id="study_method"
                          class="form-control"
                        />
                      </div>
                      <small class="text-danger" v-if="errors.study_method">
                        {{ errors.study_method[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-4 mt-4">
                      <div class="">
                        <label for="qualification" class="form-label">Qualification</label
                        ><input
                          type="text"
                          v-model="course.qualification"
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
                        v-model="course.description"
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
                        v-model="course.accreditation"
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
                        v-model="course.entry_requirements"
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
                        v-model="course.qualification_lead_to"
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
                        v-model="course.qualification_important"
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
                        v-model="course.quality_standards"
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
                        v-model="course.mode_of_study"
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
                        v-model="course.assessment_note"
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
                        v-model="course.certification_note"
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
                        v-model="course.regulated_qualification"
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
                        v-model="course.support"
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
                        v-model="course.healthcare_information"
                        :editorToolbar="customToolbar"
                      ></vue-editor>
                      <small class="text-danger" v-if="errors.healthcare_information">
                        {{ errors.healthcare_information[0] }}
                      </small>
                    </div>
                    <div class="form-group col-6 col-lg-3">
                      <input
                        type="submit"
                        value="Update Course"
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
        </div>
      </div>
    </section>
  </div>
</template>
<script>
export default {
  name: "edit-course",
  data() {
    return {
      token: "",
      slug: "",
      instructors: [],
      categories: [],
      errors: {},
      loading: false,
      course: "",
      customToolbar: [
        ["bold", "italic", "underline", "strike"],
        [{ align: "" }, { align: "center" }, { align: "right" }, { align: "justify" }],
        ["blockquote", "code-block"],
        [{ list: "ordered" }, { list: "bullet" }, { list: "check" }],
        [{ indent: "-1" }, { indent: "+1" }], // outdent/indent
        ["link"],
        ["clean"],
      ],
    };
  },
  created() {
    this.login();
    this.getCourse();
    this.getInstructors();
    this.getCourseCategories();
  },
  methods: {
    login() {
      if (!User.loggedIn()) {
        this.$router.push({
          name: "login",
        });
      } else {
        this.token = User.token();
        this.slug = this.$route.params.slug;
      }
    },
    getCourse() {
      axios
        .get("/api/kevron/course/" + this.slug, {
          headers: {
            Authorization: "Bearer " + this.token,
            Accept: "application/json",
          },
        })
        .then((response) => (this.course = response.data))
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
    getCourseCategories() {
      axios
        .get("/api/course-categories")
        .then((response) => (this.categories = response.data))
        .catch();
    },
    update() {
      this.loading = true;
      axios
        .patch("/api/course/" + this.slug, this.course)
        .then((res) => {
          Toast.fire({
            icon: "success",
            title: "Successfully Done",
          });
          this.$router.push({
            name: "admin-courses",
          });
        })
        .catch((error) => (this.errors = error.response.data.errors))
        .finally(() => {
          this.loading = false;
        });
    },
  },
};
</script>
