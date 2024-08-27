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
                <h3 class="float-start">Edit Course Outline for {{ course.title }}</h3>
              </div>
              <div class="card-body">
                <form @submit.prevent="updateCourseOutline" class="row mt-2">
                  <div
                    class="form-group col-12 col-lg-6 mb-3"
                    v-for="outline in course_outlines"
                    :key="outline.id"
                  >
                    <div class="row">
                      <div class="col-12 col-lg-5">
                        <input
                          type="text"
                          v-model="outline.name"
                          required
                          class="form-control"
                        />
                      </div>
                       <div class="col-12 col-lg-2">
                            <input
                              type="text"
                              v-model="outline.level"
                              required
                              class="form-control"
                            />
                          </div>
                           <div class="col-12 col-lg-2">
                            <input
                              type="text"
                              v-model="outline.credit"
                              required
                              class="form-control"
                            />
                          </div>
                      <div class="col-12 col-lg-3">
                        <button
                          class="btn btn-primary"
                          @click="updateCourseOutline(outline)"
                        >
                          <img
                            src="https://img.icons8.com/ios/20/ffffff/approve-and-update.png"
                          />
                        </button>
                        <button
                          class="btn btn-danger"
                          @click.prevent="deleteOutline(outline.id)"
                        >
                          <img
                            src="https://img.icons8.com/ios-filled/20/ffffff/delete-forever.png"
                          />
                        </button>
                      </div>
                    </div>
                  </div>
                  <div class="clearfix"></div>
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
  name: "edit-course-outlines",
  data() {
    return {
      token: "",
      slug: "",
      course: "",
      course_outlines: [],
      loading: false,
    };
  },
  created() {
    this.login();
    this.getCourse();
    this.getCourseOutlines();
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
    getCourseOutlines() {
      axios
        .get("/api/kevron/course-outlines/" + this.slug, {
          headers: {
            Authorization: "Bearer " + this.token,
            Accept: "application/json",
          },
        })
        .then((response) => (this.course_outlines = response.data))
        .catch((error) => {
          console.log(error);
          if (error.response.status == 401) {
            this.$router.push({
              name: "logout",
            });
          }
        });
    },
    updateCourseOutline(outline) {
      this.loading = true;

      axios
        .patch("/api/update-course-outline/" + outline.id, outline)
        .then((res) => {
          Toast.fire({
            icon: "success",
            title: "Successfully Done",
          });

          this.$router.push({
            path: `/admin/courses/course-outline/edit/${this.slug}`,
          });
          this.getCourseOutlines();
        })
        .catch();
    },
    deleteOutline(id) {
      Swal.fire({
        title: "Are you sure?",
        text: "You won't be able to revert this!",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, delete it!",
      }).then((result) => {
        if (result.isConfirmed) {
          axios
            .delete("/api/course-outlines/" + id)
            .then(() => {
              this.$router.push({
                path: `/admin/courses/course-outline/edit/${this.slug}`,
              });
              this.getCourseOutlines();
            })
            .catch((error) => {
              this.error = true;
              console.log(error);
              if (error.response.status == 401) {
                this.errors.push(error.response.data.error);
              }
            });
          Swal.fire(
            "Course Outline Deleted!",
            "Course outline  has been deleted",
            "success"
          );
        }
      });
    },
  },
};
</script>
