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
                <h3 class="float-start">Upload {{ form.title }} Files</h3>
              </div>
              <div class="card-body">
                <form @submit.prevent="uploadFiles" class="row">
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
                      <label for="syllabus_guide" class="form-label">Syllabus Guide</label
                      ><input
                        type="text"
                        v-model="form.syllabus_guide"
                        id="syllabus_guide"
                        placeholder="Enter Course Syllabus Guide Googlr Drive URL"
                        class="form-control"
                      />
                    </div>
                    <small class="text-danger" v-if="errors.syllabus_guide">
                      {{ errors.syllabus_guide[0] }}
                    </small>
                  </div>

                  <div class="clearfix"></div>
                  <div class="form-group col-6 col-lg-3">
                    <input
                      type="submit"
                      value="Upload Files"
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
  name: "edit-files",
  data() {
    return {
      slug: "",
      token: "",

      loading: false,

      form: {},
      errors: {},
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
        .then((response) => (this.form = response.data))
        .catch((error) => {
          console.log(error);
          if (error.response.status == 401) {
            this.$router.push({
              name: "logout",
            });
          }
        });
    },
    uploadFiles() {
      this.loading = true;
      const data = new FormData();
      data.append("syllabus_guide", this.form.syllabus_guide);
      data.append("calender", this.form.calender);
      data.append("slug", this.slug);
      axios
        .post("/api/upload-files", data)
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
