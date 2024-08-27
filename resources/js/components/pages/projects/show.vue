<template>
  <div>
    <page-header></page-header>
    <page-nav active="projects"></page-nav>
    <!-- Page Banner -->
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-10 my-3">
          <nav aria-label="breadcrumb mt-5">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item active">
                <router-link :to="{ name: 'projects' }">Projects</router-link>
              </li>
              <li class="breadcrumb-item active" aria-current="page">
                {{ project.title }}
              </li>
            </ol>
          </nav>
          <h1 class="garamond page-title">{{ project.title }}</h1>
          <p>
            {{ project.short_description }}
          </p>
          <img :src="'../../' + project.featured_image" alt="Project Image" />
        </div>
      </div>
    </div>
    <!-- End Page Banner -->
    <section class="key_information">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-10">
            <div class="row">
              <div class="col-lg-12">
                <h5 class="text-uppercase primary-color bold">key information</h5>
                <div class="line"></div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-4">
                <div class="media primary-color my-3">
                  <img
                    style="margin-right: 8px !important"
                    src="https://img.icons8.com/ios/20/291770/marker-o.png"
                  />
                  <div class="media-body">
                    <h6 class="mt-0 primary-color">
                      <strong>Location:</strong> {{ project.location }}
                    </h6>
                  </div>
                </div>
                <div class="media primary-color my-3">
                  <img
                    style="margin-right: 8px !important"
                    src="https://img.icons8.com/ios/20/291770/calendar--v1.png"
                  />
                  <div class="media-body">
                    <h6 class="mt-0 primary-color pl-3">
                      <strong> Date Started:</strong>
                      {{ project.commence_date | moment("MMMM, YYYY") }}
                    </h6>
                  </div>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="media primary-color my-3">
                  <img
                    style="margin-right: 8px !important"
                    src="https://img.icons8.com/ios/20/291770/calendar--v1.png"
                  />
                  <div class="media-body">
                    <h6 class="mt-0 primary-color pl-3">
                      <strong> Completed Date :</strong>
                      <span v-if="project.completed_date">{{
                        project.completed_date | moment("MMMM, YYYY")
                      }}</span
                      ><span v-else>Ongoing</span>
                    </h6>
                  </div>
                </div>
                <div class="media primary-color my-3">
                  <img
                    style="margin-right: 8px !important"
                    src="https://img.icons8.com/windows/20/291770/user.png"
                  />
                  <div class="media-body">
                    <h6 class="mt-0 primary-color pl-3">
                      <strong> Client Name :</strong> {{ project.client_name }}
                    </h6>
                  </div>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="media primary-color my-3">
                  <img
                    style="margin-right: 8px !important"
                    src="https://img.icons8.com/ios/20/291770/key.png"
                  />
                  <div class="media-body">
                    <h6 class="mt-0 primary-color pl-3">
                      <strong> Main Services :</strong> {{ project.main_services }}
                    </h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="single-event-area pb-180">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-10">
            <div class="single-event-description">
              <h3 class="h3 mt-3">Project Description</h3>
              <div v-html="project.description"></div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <page-footer></page-footer>
  </div>
</template>
<script>
export default {
  name: "project",
  data() {
    return {
      bg: "assets/img/projects/project-bg.png",
      project: "",
    };
  },
  mounted() {
    window.scrollTo(0, 0);
  },
  created() {
    this.getProject();
  },
  methods: {
    getProject() {
      let slug = this.$route.params.slug;
      axios
        .get("/api/project/" + slug)
        .then((response) => (this.project = response.data))
        .catch();
    },
  },
};
</script>
