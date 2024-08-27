<template>
  <div>
    <admin-nav active="post"></admin-nav>
    <page-title title="Post"></page-title>
    <section class="pt-100 pb-180">
      <div class="container">
        <div class="row">
          <div class="col-lg-12" v-if="add_post">
            <div class="card">
              <div class="card-header p-3">
                <h3 class="float-start">Add Post</h3>
                <button class="float-end btn btn-sm default-btn" @click="addPost">
                  Close
                </button>
              </div>

              <div class="card-body">
                <form @submit.prevent="store">
                  <div class="row" :disabled="loading">
                    <div class="form-group col-12 col-lg-4">
                      <label for="category" class="form-label">Category</label
                      ><select v-model="form.category" id="category" class="form-control">
                        <option value="">Select a Category</option>
                        <option v-for="cat in categories" :key="cat.id" :value="cat.id">
                          {{ cat.title }}
                        </option></select
                      ><small class="text-danger" v-if="errors.category">
                        {{ errors.category[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-8">
                      <label for="title" class="form-label">Title</label
                      ><input
                        type="text"
                        v-model="form.title"
                        id="title"
                        placeholder="Enter Post Title"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.title">
                        {{ errors.title[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-12 mt-3">
                      <label for="content" class="form-label">Content</label>
                      <vue-editor
                        id="content"
                        v-model="form.content"
                        :editorToolbar="customToolbar"
                      ></vue-editor>
                      <small class="text-danger" v-if="errors.content">
                        {{ errors.content[0] }}
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
                          >Upload Featured Image</label
                        >
                      </div>
                      <small class="text-danger" v-if="errors.featured_image">
                        {{ errors.featured_image[0] }}
                      </small>
                    </div>
                    <div class="col-12 col-lg-1 mt-5">
                      <img
                        v-if="form.featured_image"
                        :src="form.featured_image"
                        height="80px"
                        alt=""
                      />
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group col-6 col-lg-6">
                      <input
                        type="submit"
                        value="Add Post"
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
          <div class="col-lg-12" v-if="edit_post">
            <div class="card">
              <div class="card-header p-3">
                <h3 class="float-start">Edit Post</h3>
                <button class="float-end btn btn-sm default-btn" @click="closeEditPost">
                  Close
                </button>
              </div>

              <div class="card-body">
                <form @submit.prevent="update">
                  <div class="row" :disabled="loading">
                    <div class="form-group col-12 col-lg-4">
                      <label for="category" class="form-label">Title</label
                      ><select v-model="post.category" id="category" class="form-control">
                        <option value="">Select a Category</option>
                        <option v-for="cat in categories" :key="cat.id" :value="cat.id">
                          {{ cat.title }}
                        </option></select
                      ><small class="text-danger" v-if="errors.category">
                        {{ errors.category[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-8">
                      <label for="title" class="form-label">Title</label
                      ><input
                        type="text"
                        v-model="post.title"
                        id="title"
                        placeholder="Enter Post Title"
                        class="form-control"
                      /><small class="text-danger" v-if="errors.title">
                        {{ errors.title[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-12">
                      <label for="content" class="form-label">Title</label>
                      <vue-editor
                        id="content"
                        v-model="post.content"
                        :editorToolbar="customToolbar"
                      ></vue-editor>
                      <small class="text-danger" v-if="errors.content">
                        {{ errors.content[0] }}
                      </small>
                    </div>
                    <div class="form-group col-12 col-lg-5 mt-5">
                      <div class="input-group mb-3">
                        <input
                          type="file"
                          class="form-control"
                          id="inputGroupFile03"
                          @change="onFileSelectedImage"
                        />
                        <label class="input-group-text" for="inputGroupFile03"
                          >Upload Featured Image</label
                        >
                      </div>
                      <small class="text-danger" v-if="errors.featured_image">
                        {{ errors.featured_image[0] }}
                      </small>
                    </div>
                    <div class="col-12 col-lg-1 mt-5">
                      <img
                        v-if="post.new_featured_image"
                        :src="post.new_featured_image"
                        height="80px"
                        alt=""
                      />
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group col-6 col-lg-6">
                      <input
                        type="submit"
                        value="Edit Post"
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
          <div class="col-12 col-lg-12">
            <div class="card">
              <div class="card-header p-3">
                <h3 class="float-start">Posts</h3>
                <button @click="addPost" class="float-end btn btn-sm default-btn">
                  Add Post
                </button>
              </div>

              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th></th>
                        <th>Title</th>
                        <th>Category</th>
                        <th></th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="post in posts" :key="post.id">
                        <td><img :src="'../' + post.featured_image" height="50" /></td>
                        <td>{{ post.title }}</td>
                        <td>{{ post.category }}</td>
                        <td>
                          {{ post.created_at | moment("from", "now") }}
                        </td>
                        <td>
                          <button class="btn btn-primary" @click="getPost(post.slug)">
                            Edit
                          </button>
                          <button
                            class="btn btn-danger"
                            @click.prevent="deletePost(post.id)"
                          >
                            <img
                              src="https://img.icons8.com/ios-filled/20/ffffff/delete-forever.png"
                            />
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
  name: "post",
  data() {
    return {
      token: "",
      add_post: false,
      categories: [],
      post: {
        category: "",
        title: "",
        content: "",
        featured_image: "",
        new_featured_image: "",
      },
      edit_post: false,
      posts: [],
      form: {
        category: "",
        title: "",
        content: "",
        featured_image: "",
      },
      errors: {},
      loading: false,
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
    this.getCategories();
    this.getPosts();
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
    closeEditPost() {
      this.edit_post = false;
      this.post = "";
    },
    addPost() {
      if (!this.add_post) {
        this.add_post = true;
      } else {
        this.add_post = false;
      }
    },
    onFileSelected(event) {
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
          this.form.featured_image = event.target.result;
        };
      }
    },
    onFileSelectedImage(event) {
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
          this.post.new_featured_image = event.target.result;
          console.log(this.post.new_featured_image);
        };
      }
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
    getPost(slug) {
      this.edit_post = true;
      axios
        .get("/api/kevron/post/" + slug, {
          headers: {
            Authorization: "Bearer " + this.token,
            Accept: "application/json",
          },
        })
        .then((response) => (this.post = response.data))
        .catch((error) => {
          console.log(error);
          if (error.response.status == 401) {
            this.$router.push({
              name: "logout",
            });
          }
        });
    },
    getPosts() {
      axios
        .get("/api/kevron/post", {
          headers: {
            Authorization: "Bearer " + this.token,
            Accept: "application/json",
          },
        })
        .then((response) => (this.posts = response.data))
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
        .post("/api/post", this.form)
        .then((res) => {
          Toast.fire({
            icon: "success",
            title: "Successfully Done",
          });
          this.getPosts();
          this.add_post = false;
          this.form = {
            category: "",
            title: "",
            content: "",
            featured_image: "",
          };
        })
        .catch((error) => (this.errors = error.response.data.errors))
        .finally(() => {
          this.loading = false;
        });
    },
    update() {
      this.loading = true;
      axios
        .patch("/api/post/" + this.post.slug, this.post)
        .then((res) => {
          Toast.fire({
            icon: "success",
            title: "Successfully Done",
          });
          this.getPosts();
          this.edit_post = false;
          this.post = "";
        })
        .catch((error) => (this.errors = error.response.data.errors))
        .finally(() => {
          this.loading = false;
        });
    },
    deletePost(id) {
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
            .delete("/api/post/" + id)
            .then(() => {
              this.getPosts();
            })
            .catch((error) => {
              this.error = true;
              console.log(error);
              if (error.response.status == 401) {
                this.errors.push(error.response.data.error);
              }
            });
          Swal.fire("Post Deleted!", "Post  has been deleted", "success");
        }
      });
    },
  },
};
</script>
