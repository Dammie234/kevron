<template>
  <div>
    <admin-nav active="projects"></admin-nav>
    <page-title title="Projects"></page-title>
    <section class="pt-100 pb-180">
      <div class="container">
        <div class="row">
          <div class="col-12 col-lg-12" v-if="project">
            <div class="card">
              <div class="card-header">
                <h3 class="float-start">Add Project</h3>
                <button class="float-end btn btn-sm default-btn" @click="openProject">
                  Close Project
                </button>
              </div>
              <div class="card-body">
                <form @submit.prevent="store" class="row">
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
                    <label for="client_name" class="form-label">Client Name</label
                    ><input
                      type="text"
                      v-model="form.client_name"
                      id="client_name"
                      placeholder="Enter Client Name"
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
                      id="country"
                      placeholder="Enter Project Location"
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
                      id="main_services"
                      placeholder="Enter Main Services"
                      class="form-control"
                    /><small class="text-danger" v-if="errors.main_services">
                      {{ errors.main_services[0] }}
                    </small>
                  </div>

                  <div class="form-group col-12 col-lg-5 mt-5">
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
                  <div class="col-12 col-lg-1 mt-3">
                    <img
                      v-if="form.featured_image"
                      :src="form.featured_image"
                      height="80px"
                    />
                  </div>

                  <div class="form-group col-12 col-lg-12 mt-3">
                    <label for="short_description" class="form-label"
                      >Short Description</label
                    ><textarea
                      rows="5"
                      v-model="form.short_description"
                      id="short_description"
                      placeholder="Enter Project Short Description"
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
          <div class="col-12 col-lg-12 mt-5">
            <div class="card">
              <div class="card-header">
                <h3 class="float-start">Projects</h3>
                <button class="float-end btn btn-sm default-btn" @click="openProject">
                  Add Project
                </button>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th></th>
                        <th>Title</th>
                        <th>Client Type</th>
                        <th>Location</th>
                        <th>Main Services</th>
                        <th>Commence Date</th>
                        <th>Completed Date</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="pro in projects" :key="pro.id">
                        <td><img :src="'../../' + pro.featured_image" height="50" /></td>
                        <td>{{ pro.title }}</td>
                        <td>{{ pro.client_name }}</td>
                        <td>{{ pro.location }}</td>
                        <td>{{ pro.main_services }}</td>
                        <td>{{ pro.commence_date | moment("dddd, MMMM Do YYYY") }}</td>
                        <td>
                          <span v-if="pro.completed_date">{{
                            pro.completed_date | moment("dddd, MMMM Do YYYY")
                          }}</span
                          ><span v-else>Ongoing</span>
                        </td>
                        <td>
                          <router-link
                            class="btn btn-primary"
                            :to="{
                              name: 'edit-admin-projects',
                              params: { slug: pro.slug },
                            }"
                            >Edit/Show</router-link
                          >
                          <router-link
                            class="btn btn-primary"
                            :to="{
                              name: 'edit-admin-project-images',
                              params: { slug: pro.slug },
                            }"
                            >Edit Images</router-link
                          >
                          <button class="btn btn-danger" @click="deleteProject(pro.id)">
                            Delete
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
  name: "projects",
  data() {
    return {
      token: "",
      projects: [],
      form: {
        title: "",
        client_name: "",
        commence_date: "",
        completed_date: "",
        featured_image: "",
        description: "",
        short_description: "",
        main_services: "",
        location: "",
      },
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
      loading: false,
      project: false,
    };
  },
  created() {
    this.login();
    this.getProjects();
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
    openProject() {
      if (!this.project) {
        this.project = true;
      } else {
        this.project = false;
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

    getProjects() {
      axios
        .get("/api/kevron/project/", {
          headers: {
            Authorization: "Bearer " + this.token,
            Accept: "application/json",
          },
        })
        .then((response) => (this.projects = response.data))
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
        .post("/api/project", this.form)
        .then((res) => {
          Toast.fire({
            icon: "success",
            title: "Successfully Done",
          });

          this.project = false;
          this.form = {
            title: "",
            client_name: "",
            commence_date: "",
            completed_date: "",
            featured_image: "",
            description: "",
            image1: "",
            image2: "",
            image3: "",
            country: "",
            state: "",
            city: "",
          };
          this.getProjects();
        })
        .catch((error) => (this.errors = error.response.data.errors))
        .finally(() => {
          this.loading = false;
        });
    },
    deleteProject(id) {
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
            .delete("/api/project/" + id)
            .then(() => {
              this.projects = this.projects.filter((project) => {
                return project.id != id;
              });

              this.getProjects();
              Swal.fire("Deleted!", "A project has been deleted.", "success");
            })
            .catch();
        }
      });
    },
  },
};
</script>
