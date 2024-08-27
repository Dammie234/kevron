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
                <h3 class="float-start">Edit Project</h3>
              </div>
              <div class="card-body">
                <form @submit.prevent="update" class="row">
                  <div class="form-group col-12 col-lg-6">
                    <label for="title" class="form-label">Title</label
                    ><input
                      type="text"
                      v-model="form.title"
                      id="title"
                      placeholder="Enter Project Title"
                      class="form-control"
                    /><small class="text-danger" v-if="errors.title">
                      {{ errors.title[0] }}
                    </small>
                  </div>
                  <div class="form-group col-12 col-lg-3">
                    <label for="client_name" class="form-label">Client Type</label
                    ><input
                      type="text"
                      v-model="form.client_name"
                      id="client_name"
                      placeholder="Enter Client Type"
                      class="form-control"
                    /><small class="text-danger" v-if="errors.client_name">
                      {{ errors.client_name[0] }}
                    </small>
                  </div>
                  <div class="form-group col-12 col-lg-3">
                    <label for="commence_date" class="form-label">Commence Date</label
                    ><input
                      type="date"
                      v-model="form.commence_date"
                      id="commence_date"
                      class="form-control"
                    /><small class="text-danger" v-if="errors.commence_date">
                      {{ errors.commence_date[0] }}
                    </small>
                  </div>
                  <div class="form-group col-12 col-lg-3 mt-3">
                    <label for="completed_date" class="form-label">Completed Date</label
                    ><input
                      type="date"
                      v-model="form.completed_date"
                      id="completed_date"
                      class="form-control"
                    /><small class="text-danger" v-if="errors.completed_date">
                      {{ errors.completed_date[0] }}
                    </small>
                  </div>
                  <div class="form-group col-12 col-lg-3 mt-3">
                    <label for="location" class="form-label">Location</label
                    ><input
                      type="text"
                      v-model="form.location"
                      id="location"
                      placeholder="Enter Location"
                      class="form-control"
                    /><small class="text-danger" v-if="errors.location">
                      {{ errors.location[0] }}
                    </small>
                  </div>
                  <div class="form-group col-12 col-lg-6 mt-3">
                    <label for="main_services" class="form-label">Main Services</label
                    ><input
                      type="text"
                      v-model="form.main_services"
                      id="state"
                      placeholder="Enter State"
                      class="form-control"
                    /><small class="text-danger" v-if="errors.main_services">
                      {{ errors.main_services[0] }}
                    </small>
                  </div>

                  <div class="form-group col-12 col-lg-12 mt-3">
                    <label for="short_description" class="form-label"
                      >short Description</label
                    ><textarea
                      rows="5"
                      v-model="form.short_description"
                      id="short_description"
                      placeholder="Enter Project Description"
                      class="form-control"
                    ></textarea
                    ><small class="text-danger" v-if="errors.short_description">
                      {{ errors.short_description[0] }}
                    </small>
                  </div>
                  <div class="form-group col-12 col-lg-12 mt-3">
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
  name: "edit-projects",
  data() {
    return {
      token: "",
      form: {},
      slug: "",
      errors: {},
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
    getProject() {
      axios
        .get("/api/kevron/project/" + this.slug, {
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
    update() {
      this.loading = true;
      axios
        .patch("/api/project/" + this.slug, this.form)
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
