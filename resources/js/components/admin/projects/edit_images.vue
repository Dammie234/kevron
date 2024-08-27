<template>
  <div>
    <admin-nav active="projects"></admin-nav>
    <page-title title="Projects"></page-title>
    <section class="pt-100 pb-180">
      <div class="container">
        <div class="row">
          <div class="col-12 col-lg-12">
            <div class="card">
              <div class="card-header">
                <h3 class="float-start">Edit {{ project.title }} Project Images</h3>
              </div>
              <div class="card-body">
                <form @submit.prevent="update" class="row">
                  <div class="col-md-1">
                    <img :src="'../../' + project.featured_image" alt="" />
                  </div>
                  <div class="form-group col-12 col-lg-4">
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
                  <div class="col-12 col-lg-1">
                    <img
                      v-if="form.featured_image"
                      :src="form.featured_image"
                      height="80px"
                    />
                  </div>

                  <div class="clearfix"></div>
                  <div class="form-group col-6 col-lg-3">
                    <input type="submit" value="Submit" class="btn mt-3 default-btn" />
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
  name: "edit_images",
  data() {
    return {
      token: "",
      project: "",
      slug: "",
      form: {
        featured_image: "",
      },
      errors: {},
      loading: false,
    };
  },
  created() {
    this.login();
    this.getProject();
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
          title: "Featured Image is too large. Upload less than 2MB",
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

    getProject() {
      axios
        .get("/api/kevron/project/" + this.slug, {
          headers: {
            Authorization: "Bearer " + this.token,
            Accept: "application/json",
          },
        })
        .then((response) => (this.project = response.data))
        .catch((error) => {
          console.log(error);
          if (error.response.status == 401) {
            this.$router.push({
              name: "logout",
            });
          }
        });
    },
    update() {
      this.loading = true;
      axios
        .patch("/api/project-images/" + this.slug, this.form)
        .then((res) => {
          Toast.fire({
            icon: "success",
            title: "Successfully Done",
          });
          this.$router.push({
            name: "admin-projects",
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
