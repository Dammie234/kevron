<template>
  <div>
    <admin-nav active="dashboard"></admin-nav>
    <page-title title="Dashboard"></page-title>
  </div>
</template>

<script>
export default {
  name: "home",
  data() {
    return {
      token: "",
      id: '',
      user: "",
    };
  },
  created() {
    this.login();
    this.getUser();
  },
  methods: {
    login() {
      if (!User.loggedIn()) {
        this.$router.push({
          name: "login",
        });
      } else {
        this.id = 
        this.token = User.token();
      }
    },
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

<style scoped></style>
