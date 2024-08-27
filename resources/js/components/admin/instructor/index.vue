<template>
  <div>
    <admin-nav active="instructors"></admin-nav>
    <page-title title="Instructors"></page-title>
    <section class="pt-100 pb-180">
      <div class="container">
        <div class="row">
          <div class="col-12 col-lg-12" v-if="instructor">
            <div class="card">
              <div class="card-header p-3">
                <h3 class="float-start">Add Instructor</h3>
                <button class="float-end btn btn-sm default-btn" @click="addInstructor">
                  Close Instructor
                </button>
              </div>
              <div class="card-body">
                <form @submit.prevent="store">
                  <div class="row" :disabled="loading">
                    <div class="form-group col-12 col-lg-7 mt-3">
                      <label for="name" class="form-label">Name</label
                      ><input
                        type="text"
                        v-model="form.name"
                        id="name"
                        placeholder="Enter Name of Instructor"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.name">
                        {{ errors.name[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-5 mt-3">
                      <label for="qualifications" class="form-label">Qualifications</label
                      ><input
                        type="text"
                        v-model="form.qualifications"
                        id="qualifications"
                        placeholder="Enter Instructor Qualification. E.g. Bsc, Msc, PhD"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.qualifications">
                        {{ errors.qualifications[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-4 mt-3">
                      <label for="email" class="form-label">E-mail Address</label
                      ><input
                        type="email"
                        v-model="form.email"
                        id="email"
                        placeholder="Enter Instructor Email"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.email">
                        {{ errors.email[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-4 mt-3">
                      <label for="facebook" class="form-label">Facebook URL</label
                      ><input
                        type="text"
                        v-model="form.facebook"
                        id="facebook"
                        placeholder="Enter Instructor Facebook Profile URL"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.facebook">
                        {{ errors.facebook[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-4 mt-3">
                      <label for="twitter" class="form-label">Twitter URL</label
                      ><input
                        type="text"
                        v-model="form.twitter"
                        id="twitter"
                        placeholder="Enter Instructor Twitter Profile URL"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.twitter">
                        {{ errors.twitter[0] }}
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
                          >Upload</label
                        >
                      </div>
                      <small class="text-danger" v-if="errors.profile_picture">
                        {{ errors.profile_picture[0] }}
                      </small>
                    </div>
                    <div class="col-12 col-lg-1 mt-5">
                      <img
                        v-if="form.profile_picture"
                        :src="form.profile_picture"
                        height="80px"
                        alt=""
                      />
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="linkedin" class="form-label">LinkedIn URL</label
                      ><input
                        type="text"
                        v-model="form.linkedin"
                        id="linkedin"
                        placeholder="Enter Instructor Facebook Profile URL"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.linkedin">
                        {{ errors.linkedin[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-12 mt-3">
                      <label for="" class="form-label">About Instructor</label
                      ><textarea
                        v-model="form.about"
                        id=""
                        rows="10"
                        class="form-control"
                      ></textarea>
                      <small class="text-danger" v-if="errors.about">
                        {{ errors.about[0] }}
                      </small>
                    </div>
                    <div class="form-group col-6 col-lg-3">
                      <input
                        type="submit"
                        value="Add Instructor"
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
          <div class="col-12 col-lg-12 mt-5" v-if="edit_instructor">
            <div class="card">
              <div class="card-header p-3">
                <h3 class="float-start">Edit Instructor</h3>
                <button class="float-end btn btn-sm default-btn" @click="closeInstructor">
                  Close
                </button>
              </div>
              <div class="card-body">
                <form @submit.prevent="update">
                  <div class="row" :disabled="loading">
                    <div class="form-group col-12 col-lg-7 mt-3">
                      <label for="name" class="form-label">Name</label
                      ><input
                        type="text"
                        v-model="ins.name"
                        id="name"
                        placeholder="Enter Name of Instructor"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.name">
                        {{ errors.name[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-5 mt-3">
                      <label for="qualifications" class="form-label">Qualifications</label
                      ><input
                        type="text"
                        v-model="ins.qualifications"
                        id="qualifications"
                        placeholder="Enter Instructor Qualification. E.g. Bsc, Msc, PhD"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.qualifications">
                        {{ errors.qualifications[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="email" class="form-label">E-mail Address</label
                      ><input
                        type="email"
                        v-model="ins.email"
                        id="email"
                        placeholder="Enter Instructor Email"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.email">
                        {{ errors.email[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="facebook" class="form-label">Facebook URL</label
                      ><input
                        type="text"
                        v-model="ins.facebook"
                        id="facebook"
                        placeholder="Enter Instructor Facebook Profile URL"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.facebook">
                        {{ errors.facebook[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="twitter" class="form-label">Twitter URL</label
                      ><input
                        type="text"
                        v-model="ins.twitter"
                        id="twitter"
                        placeholder="Enter Instructor Twitter Profile URL"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.twitter">
                        {{ errors.twitter[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-6 mt-3">
                      <label for="linkedin" class="form-label">LinkedIn URL</label
                      ><input
                        type="text"
                        v-model="ins.linkedin"
                        id="linkedin"
                        placeholder="Enter Instructor Facebook Profile URL"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.linkedin">
                        {{ errors.linkedin[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-12 mt-3">
                      <label for="" class="form-label">About Instructor</label
                      ><textarea
                        v-model="ins.about"
                        id=""
                        rows="10"
                        class="form-control"
                      ></textarea>
                      <small class="text-danger" v-if="errors.about">
                        {{ errors.about[0] }}
                      </small>
                    </div>
                    <div class="form-group col-6 col-lg-3">
                      <input
                        type="submit"
                        value="Edit Instructor"
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
          <div class="col-12 col-lg-12 mt-5" v-if="edit_profile">
            <div class="card">
              <div class="card-header">
                <h3 class="float-start">Edit Instructor Profile Image</h3>
                <button
                  class="float-end btn btn-sm default-btn"
                  @click="closeInstructorProfile"
                >
                  Close
                </button>
              </div>
              <div class="card-body">
                <form
                  @submit.prevent="updateProfilePicture"
                  enctype="multipart/form-data"
                >
                  <div class="row">
                    <div class="form-group col-12 col-lg-5">
                      <label for="profile" class="form-label">Old Profile Picture</label
                      ><input
                        type="text"
                        v-model="instruct.profile_picture"
                        id="profile"
                        disabled
                        class="form-control"
                      />
                    </div>
                    <div class="col-12 col-lg-1">
                      <img
                        v-if="instruct.profile_picture"
                        :src="'../../' + instruct.profile_picture"
                        height="80px"
                        alt=""
                      />
                    </div>
                    <div class="form-group col-12 col-lg-5 mt-5">
                      <div class="input-group mb-3">
                        <input
                          type="file"
                          class="form-control"
                          id="inputGroupFile03"
                          required
                          @change="onFileProfilePictureSelected"
                        />
                        <label class="input-group-text" for="inputGroupFile03"
                          >Upload</label
                        >
                      </div>
                      <small class="text-danger" v-if="errors.profile_picture">
                        {{ errors.profile_picture[0] }}
                      </small>
                    </div>
                    <div class="col-12 col-lg-1 mt-5">
                      <img
                        v-if="image.profile_picture"
                        :src="image.profile_picture"
                        height="80px"
                        alt=""
                      />
                    </div>
                    <div class="form-group col-6 col-lg-3">
                      <input
                        type="submit"
                        value="Update Profile Picture"
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
                <h3 class="float-start">Instructors</h3>
                <button
                  class="float-end btn btn-sm default-btn"
                  v-if="!instructor"
                  @click="addInstructor"
                >
                  Add Instructor
                </button>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th></th>
                        <th>Name</th>
                        <th>Qualifications</th>
                        <th>Email</th>

                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="ins in instructors" :key="ins.id">
                        <td>
                          <img :src="'../../' + ins.profile_picture" height="50" />
                        </td>
                        <td>{{ ins.name }}</td>
                        <td>{{ ins.qualifications }}</td>
                        <td>{{ ins.email }}</td>
                        <td>
                          <button
                            class="btn btn-primary btn-sm mr-2"
                            @click="getInstructor(ins.slug)"
                          >
                            Edit/Show
                          </button>
                          <button
                            class="btn btn-primary btn-sm"
                            @click="getInstruct(ins.slug)"
                          >
                            Change Profile Picture
                          </button>
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
  name: "instructors",
  data() {
    return {
      token: "",
      user: "",
      instructors: [],
      form: {
        name: "",
        email: "",
        qualifications: "",
        twitter: "",
        facebook: "",
        linkedin: "",
        about: "",
        profile_picture: "",
      },
      loading: false,
      instructor: false,
      edit_instructor: false,
      edit_profile: false,
      errors: {},
      ins: {},
      instruct: {},
      image: {
        profile_picture: "",
      },
    };
  },
  created() {
    this.login();
    this.getUser();
    this.getInstructors();
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
    closeInstructor() {
      if (this.edit_instructor) {
        this.edit_instructor = false;
      }
    },
    closeInstructorProfile() {
      if (this.edit_profile) {
        this.edit_profile = false;
      }
    },
    onFileSelected(event) {
      let file = event.target.files[0];
      if (file.size > 1048770) {
        Toast.fire({
          icon: "warning",
          title: "Profile Picture is too large. Upload less than 2MB",
        });
      } else {
        let reader = new FileReader();
        reader.readAsDataURL(file);

        let type = file.type;
        let name = file.name;
        reader.onload = (event) => {
          this.form.profile_picture = event.target.result;
        };
      }
    },
    onFileProfilePictureSelected(event) {
      let file = event.target.files[0];
      if (file.size > 1048770) {
        Toast.fire({
          icon: "warning",
          title: "Profile Picture is too large. Upload less than 2MB",
        });
      } else {
        let reader = new FileReader();
        reader.readAsDataURL(file);

        let type = file.type;
        let name = file.name;
        reader.onload = (event) => {
          this.image.profile_picture = event.target.result;
        };
      }
    },
    addInstructor() {
      if (this.instructor) {
        this.instructor = false;
      } else {
        this.instructor = true;
      }
    },
    getInstructor(slug) {
      this.edit_instructor = true;
      axios
        .get("/api/kevron/instructor/" + slug, {
          headers: {
            Authorization: "Bearer " + this.token,
            Accept: "application/json",
          },
        })
        .then((response) => (this.ins = response.data))
        .catch((error) => {
          console.log(error);
          if (error.response.status == 401) {
            this.$router.push({
              name: "logout",
            });
          }
        });
    },
    getInstruct(slug) {
      this.edit_profile = true;
      axios
        .get("/api/kevron/instructor/" + slug, {
          headers: {
            Authorization: "Bearer " + this.token,
            Accept: "application/json",
          },
        })
        .then((response) => (this.instruct = response.data))
        .catch((error) => {
          console.log(error);
          if (error.response.status == 401) {
            this.$router.push({
              name: "logout",
            });
          }
        });
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
    store() {
      this.loading = true;
      axios
        .post("/api/instructor", this.form)
        .then((res) => {
          Toast.fire({
            icon: "success",
            title: "Successfully Done",
          });

          this.instructor = false;
          this.form = {
            name: "",
            email: "",
            qualifications: "",
            twitter: "",
            facebook: "",
            linkedin: "",
            about: "",
          };
          this.getInstructors();
        })
        .catch((error) => (this.errors = error.response.data.errors))
        .finally(() => {
          this.loading = false;
        });
    },
    update() {
      this.loading = true;
      axios
        .patch("/api/instructor/" + this.ins.slug, this.ins)
        .then((res) => {
          Toast.fire({
            icon: "success",
            title: "Successfully Done",
          });

          this.ins = {};
          this.getInstructors();
        })
        .catch((error) => (this.errors = error.response.data.errors))
        .finally(() => {
          this.loading = false;
        });
    },
    updateProfilePicture() {
      this.loading = true;
      axios
        .patch("/api/instructor-profile-image/" + this.instruct.slug, this.image)
        .then((res) => {
          Toast.fire({
            icon: "success",
            title: "Successfully Done",
          });

          this.instruct = {};
          this.getInstructors();
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
