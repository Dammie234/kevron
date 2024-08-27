<template>
  <div>
    <admin-nav active="category"></admin-nav>
    <page-title title="Category"></page-title>
    <section class="pt-100 pb-180">
      <div class="container">
        <div class="row">
          <div class="col-12 col-lg-6" v-if="add_category">
            <div class="card">
              <div class="card-header p-3">
                <h3 class="float-start">Add Category</h3>
              </div>
              `
              <div class="card-body">
                <form @submit.prevent="store">
                  <div class="row" :disabled="loading">
                    <div class="form-group col-12 col-lg-12">
                      <label for="title" class="form-label">Title</label
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

                    <div class="form-group col-6 col-lg-6">
                      <input
                        type="submit"
                        value="Add Category"
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
          <div class="col-12 col-lg-6" v-if="!add_category">
            <div class="card">
              <div class="card-header p-3">
                <h3 class="float-start">Edit Category</h3>
                <button class="float-end btn btn-sm default-btn" @click="closeCategory">
                  Close
                </button>
              </div>
              `
              <div class="card-body">
                <form @submit.prevent="update">
                  <div class="row" :disabled="loading">
                    <div class="form-group col-12 col-lg-12">
                      <label for="title" class="form-label">Title</label
                      ><input
                        type="text"
                        v-model="category.title"
                        id="title"
                        placeholder="Enter Course Title"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.title">
                        {{ errors.title[0] }}
                      </small>
                    </div>

                    <div class="form-group col-6 col-lg-6">
                      <input
                        type="submit"
                        value="Update Category"
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
          <div class="col-12 col-lg-6">
            <div class="card">
              <div class="card-header p-3">
                <h3 class="float-start">Categories</h3>
              </div>
              `
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th>Title</th>
                        <th>Slug</th>
                        <th>Post Counts</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="cat in categories" :key="cat.id">
                        <td>{{ cat.title }}</td>
                        <td>{{ cat.slug }}</td>
                        <td>{{ cat.counts }}</td>
                        <td>
                          <button class="btn btn-primary" @click="getCategory(cat.slug)">
                            Edit
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
  name: "category",
  data() {
    return {
      token: "",
      user: "",
      categories: [],
      form: {
        title: "",
      },
      category: "",
      add_category: true,
      errors: {},
      loading: false,
    };
  },
  created() {
    this.login();
    this.getCategories();
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
    closeCategory() {
      this.add_category = true;
      this.category = "";
      this.form = {
        title: "",
      };
    },
    getCategories() {
      axios
        .get("/api/kevron/category", {
          headers: {
            Authorization: "Bearer " + this.token,
            Accept: "application/json",
          },
        })
        .then((response) => (this.categories = response.data))
        .catch((error) => {
          console.log(error);
          if (error.response.status == 401) {
            this.$router.push({
              name: "logout",
            });
          }
        });
    },
    getCategory(slug) {
      this.add_category = false;
      axios
        .get("/api/kevron/category/" + slug, {
          headers: {
            Authorization: "Bearer " + this.token,
            Accept: "application/json",
          },
        })
        .then((response) => (this.category = response.data))
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
        .post("/api/category", this.form)
        .then((res) => {
          Toast.fire({
            icon: "success",
            title: "Successfully Done",
          });

          this.getCategories();
          this.form = {
            title: "",
          };
        })
        .catch((error) => (this.errors = error.response.data.errors))
        .finally(() => {
          this.loading = false;
        });
    },
    update() {
      this.loading = true;
      this.add_category = true;
      axios
        .patch("/api/category/" + this.category.slug, this.category)
        .then((res) => {
          Toast.fire({
            icon: "success",
            title: "Successfully Done",
          });
          this.getCategories();
        })
        .catch((error) => (this.errors = error.response.data.errors))
        .finally(() => {
          this.loading = false;
        });
    },
  },
};
</script>
