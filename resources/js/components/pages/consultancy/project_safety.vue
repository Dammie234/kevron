<template>
  <div>
    <page-header></page-header>
    <page-nav active="consultancy"></page-nav>
    <!-- Page Banner -->
    <div
      class="page-banner banner-bg-one"
      style="background-image: url(../../assets/img/heath-and-safety-consultancy.jpg)"
    >
      <div class="container">
        <div class="banner-text">
          <h1 class="garamond page-title" style="font-size: 65px">{{ title }}</h1>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">{{ title }}</li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
    <!-- Page Banner -->
    <div class="container">
      <div class="row py-80">
        <div class="col-lg-9">
          <div class="single-event-area">
            <div class="single-preview-img">
              <img :src="'../' + project_safety" alt="Project Safety Management" />
            </div>
            <div class="single-event-description">
              <h2>{{ title }}</h2>

              <p>
                Our Project Safety Management services enables us provide advisory
                services and support on projects. Our intervention extends to all the
                project phases beginning from – initiation, planning, executing,
                monitoring & controlling and closing phase of a project.
              </p>
              <p>
                Each stage of the project phases is risk profiled and appropriate control
                measures and documentations are implemented to guarantee success at each
                project phase.
              </p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 my-3">
          <Consultancy :active="'project-safety'" />
        </div>
      </div>
    </div>
    <!-- End Page Banner -->

    <page-footer></page-footer>
  </div>
</template>
<script>
import Consultancy from "./../../includes/consultancy.vue";
export default {
  name: "about",
  mounted() {
    window.scrollTo(0, 0);
  },
  components: {
    Consultancy,
  },
  data() {
    return {
      project_safety: "assets/img/services/project-safety.jpg",
      title: " Onsite HSE Management / Project Safety Management",
    };
  },
  head: {
    // To use "this" in the component, it is necessary to return the object through a function
    title: function () {
      return {
        inner: this.title,
      };
    },

    meta: [
      { name: "application-name", content: "Kevron Group" },
      {
        name: "description",
        content:
          "Our Project Safety Management services enable us provide QHSSE advisory services and support on projects. Our intervention extend to all the project phases – initiation, planning ,executing , monitoring & controlling and closing phase of a project.",
        id: "desc",
      },
      {
        name: "keywords",
        content:
          "project safety management, qhsse, hse, health and safety, project, safety, qhsse management, documentation, health and safety training, project qhsse coordination,safety project manager,safety in project management,construction site safety manager,project management & safety,hse project management,health and safety in project management",
      },
      { name: "copyright", content: "Kevron Group" },
      { name: "language", content: "EN" },
      { name: "robots", content: "index,follow" },
      { name: "revised", content: "Sunday, April 18th, 2020, 5:15 pm" },
      {
        name: "abstract",
        content:
          "Our Project Safety Management services enable us provide QHSSE advisory services and support on projects. Our intervention extend to all the project phases – initiation, planning ,executing , monitoring & controlling and closing phase of a project.",
      },
      { name: "classification", content: "Business" },
      { name: "author", content: "Kevron Group" },
      { name: "designer", content: "Web Tags Ltd" },
      { name: "copyright", content: "2023" },
      { name: "owner", content: "Kayode V. Fowode" },
      { name: "subject", content: "Project Safety Management" },
      { name: "directory", content: "submission" },
      { name: "category", content: "business" },
      { name: "coverage", content: "Worldwide" },
      { name: "distribution", content: "Global" },
      { name: "rating", content: "General" },
      { name: "revisit-after", content: "7 days" },
      { property: "og:title", content: "Project Safety Management" },
      { property: "og:type", content: "website" },
      { property: "og:image", content: "" },
      { property: "og:site_name", content: "Kevron Group" },
      {
        property: "og:description",
        content:
          "Our Project Safety Management services enable us provide QHSSE advisory services and support on projects. Our intervention extend to all the project phases – initiation, planning ,executing , monitoring & controlling and closing phase of a project.",
      },
      { property: "og:phone_number", content: "+234-13-424-578" },
      { property: "og:email", content: "info@kevrongroup.com" },
    ],
  },
};
</script>
<style scoped>
.list li {
  list-style: none;
}
</style>
