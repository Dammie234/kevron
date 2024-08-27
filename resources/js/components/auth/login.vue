<template>
  <div>
    <!-- header component -->
    <page-header></page-header>
    <!-- nav component -->
    <page-nav active=""></page-nav>
    <div class="page-banner banner-bg-one">
      <div class="container">
        <div class="banner-text">
          <h1>Login</h1>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Login</li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
    <section class="login-section pt-100 pb-180">
      <div class="container">
        <div class="register-form box-content">
          <div v-if="error == true" class="">
            <div
              class="alert alert-danger alert-dismissible fade show"
              role="alert"
              v-for="(error, index) in errors"
              :key="index"
            >
              <strong>Whoops!</strong> {{ error }}
              <button
                type="button"
                class="btn-close"
                data-bs-dismiss="alert"
                aria-label="Close"
              ></button>
            </div>
          </div>
          <h3 class="title">Login Your Account</h3>
          <form @submit.prevent="login">
            <div class="form-group">
              <input
                type="text"
                class="form-control"
                id="id_username"
                placeholder="Email Address"
                v-model="form.email"
              />
              <small class="text-danger" v-if="errors.email">
                {{ errors.email[0] }}
              </small>
            </div>

            <div class="form-group">
              <input
                type="password"
                class="form-control"
                id="id_password"
                placeholder="Password"
                v-model="form.password"
              />
              <small class="text-danger" v-if="errors.password">
                {{ errors.password[0] }}
              </small>
            </div>

            <div class="form-foot">
              <button type="submit" class="btn default-btn">Login</button>
              <p>Don't have an account? <a href="register.html">Register Now</a></p>
            </div>
          </form>
        </div>
      </div>
    </section>
    <page-footer></page-footer>
  </div>
</template>

<script>
export default {
  name: "login",
  created() {
    if (User.loggedIn()) {
      this.$router.push({
        name: "home",
      });
    }
  },

  data() {
    return {
      form: {
        email: null,
        password: null,
      },
      errors: [],
      error: false,
    };
  },
  methods: {
    login() {
      axios
        .post("/api/auth/login", this.form)
        .then((res) => {
          User.responseAfterLogin(res);
          Toast.fire({
            icon: "success",
            title: "Signed in successfully",
          });
          this.$router.push({
            name: "dashboard",
          });
        })
        .catch((error) => {
          this.error = true;
          console.log(error);
          if (error.response.status == 401) {
            this.errors.push(error.response.data.error);
          }
        });
    },
  },
};
</script>

<style scoped></style>
