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
                <h3 class="float-start">Edit Featured Image for {{ course.title }}</h3>
              </div>
              <div class="card-body">
                <form @submit.prevent="updateFeaturedImage" class="row">
                  <div class="form-group col-12 col-md-5 col-lg-5">
                    <label for="" class="form-label"></label>
                    <input
                      type="text"
                      :value="course.featured_image"
                      class="form-control"
                    />
                  </div>
                  <div class="col-12 col-md-1 col-lg-1">
                    <img :src="'../../../' + course.featured_image" height="80" />
                  </div>
                  <div class="form-group col-12 col-md-5 col-lg-5 mt-5">
                    <div class="input-group mb-3">
                      <input
                        type="file"
                        class="form-control"
                        id="inputGroupFile02"
                        @change="onFeaturedImageSelected"
                      />
                      <label class="input-group-text" for="inputGroupFile02"
                        >Upload Featured Image</label
                      >
                    </div>
                    <small class="text-danger" v-if="errors.featured_image">
                      {{ errors.featured_image[0] }}
                    </small>
                  </div>
                  <div class="col-12 col-lg-1 col-md-1 mt-5">
                    <img
                      v-if="images.featured_image"
                      :src="images.featured_image"
                      height="80px"
                    />
                  </div>
                  <div class="form-group col-6 col-lg-3">
                    <input
                      type="submit"
                      value="Update Featured Image"
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
  name: "edit-featured-image",
  data() {
    return {
      token: "",
      course: "",
      slug: "",
      images: { featured_image: "" },
      loading: false,
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
    onFeaturedImageSelected(event) {
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
          this.images.featured_image = event.target.result;
        };
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
    updateFeaturedImage() {
      this.loading = true;
      axios
        .patch("/api/course-featured_image/" + this.slug, this.images)
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
