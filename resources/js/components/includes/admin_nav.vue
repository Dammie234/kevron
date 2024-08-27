<template>
  <div>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light edu-navbar header-sticky">
      <div class="container">
        <a class="navbar-brand" href="/">
          <img :src="'../../../../' + logo" alt="Logo" />
        </a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item" :class="active && active == 'dashboard' ? 'active' : ''">
              <router-link class="nav-link" :to="{ name: 'dashboard' }">
                Dashboard
              </router-link>
            </li>
            <li
              class="nav-item"
              v-if="user.role == 1"
              :class="active && active == 'courses' ? 'active' : ''"
            >
              <router-link class="nav-link" :to="{ name: 'admin-courses' }">
                Courses
              </router-link>
            </li>
            <li
              class="nav-item"
              v-if="user.role == 1"
              :class="active && active == 'instructors' ? 'active' : ''"
            >
              <router-link class="nav-link" :to="{ name: 'admin-instructors' }">
                Instructors
              </router-link>
            </li>
            <li
              class="nav-item"
              v-if="user.role == 1"
              :class="active && active == 'projects' ? 'active' : ''"
            >
              <router-link class="nav-link" :to="{ name: 'admin-projects' }">
                Projects
              </router-link>
            </li>
            <li class="nav-item" :class="active && active == 'category' ? 'active' : ''">
              <router-link class="nav-link" :to="{ name: 'admin-category' }">
                Post Category
              </router-link>
            </li>
            <li class="nav-item" :class="active && active == 'post' ? 'active' : ''">
              <router-link class="nav-link" :to="{ name: 'admin-post' }">
                Posts
              </router-link>
            </li>

            <li class="nav-item">
              <router-link class="nav-link" :to="{ name: 'logout' }">
                Logout
              </router-link>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- End navbar -->
  </div>
</template>
<script>
export default {
  name: "nav",
  props: ["active"],
  data() {
    return {
      id: User.id(),
      token: User.token(),
      user: "",
      logo: "assets/img/kevron-group-logo.png",
    };
  },
  created() {
    this.getUser();
  },
  methods: {
    getUser() {
      axios
        .get("/api/kevron/user/" + this.id, {
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
  },
};
</script>
