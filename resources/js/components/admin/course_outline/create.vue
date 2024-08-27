<template>
  <div>
    <admin-nav active="courses"></admin-nav>
    <page-title title="Courses"></page-title>
    <section class="pt-100 pb-180">
      <div class="container">
        <div class="row">
          <div class="col-12 col-lg-12">
            <div class="card">
              <div class="card-header">
                <h3 class="float-start">Add Course Outline for {{ course.title }}</h3>
              </div>
              <div class="card-body">
                <div class="row">
                  <div class="col-12 col-lg-2">
                    <input
                      type="number"
                      v-model="numbers"
                      class="form-control"
                      placeholder="Enter the number of course outlines"
                    />
                  </div>
                  <div class="col-12 col-lg-2">
                    <button class="btn btn-primary" @click="addCourseOutlines">
                      Add
                    </button>
                  </div>
                </div>
                <form @submit.prevent="store" class="row mt-2">
                  <div class="form-group col-12 col-lg-6 mb-3" v-for="i in more" :key="i">
                    <div class="row">
                      <div class="col-12 col-lg-7">
                        <input
                          type="text"
                          v-model="form.course_outlines[i]"
                          required
                          placeholder="Unit Title"
                          class="form-control"
                        />
                      </div>
                      <div class="col-12 col-lg-2">
                        <input
                          type="text"
                          v-model="form.levels[i]"
                          placeholder="Level"
                          class="form-control"
                        />
                      </div>
                      <div class="col-12 col-lg-2">
                        <input
                          type="text"
                          v-model="form.credits[i]"
                          placeholder="Credit"
                          class="form-control"
                        />
                      </div>
                      <div class="col-12 col-lg-1" v-if="more > 1">
                        <button
                          class="btn btn-danger btn-sm"
                          @click.prevent="removeOutline(i)"
                        >
                          <img
                            src="https://img.icons8.com/ios-filled/20/ffffff/delete-forever.png"
                          />
                        </button>
                      </div>
                    </div>
                  </div>
                  <div class="clearfix"></div>
                  <div class="form-group col-6 col-lg-3">
                    <input
                      type="submit"
                      v-if="more != 0"
                      value="Add Course Outlines"
                      class="btn mt-3 default-btn"
                    />
                  </div>
                  <div class="col-6 col-lg-2">
                    <div class="clock-loader mt-3 ml-3" v-if="loading"></div>
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
  name: "create-course-outlines",
  data() {
    return {
      token: "",
      slug: "",
      form: {
        course: "",
        course_outlines: [],
        levels: [],
        credits: [],
      },
      add_course_outline: false,
      course: "",
      numbers: 0,
      more: 0,

      errors: {},
      loading: false,
    };
  },
  created() {
    this.login();
    this.getCourse();
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
    addCourseOutlines() {
      this.more = 0;
      this.more += parseInt(this.numbers);
    },
    removeOutline(i) {
      this.form.course_outlines.splice(i, 1);
      this.more -= 1;
    },
    store() {
      this.form.course = this.course.id;
      this.loading = true;
      this.more = 0;
      axios
        .post("/api/course-outline", this.form)
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
