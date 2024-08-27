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
              <li class="breadcrumb-item active" aria-current="page">Projects</li>
            </ol>
          </nav>
          <h1 class="">Projects</h1>
          <p>
            Our comprehensive OHS, EMS, and Technical HSE Consultancy Services have
            significantly enhanced safety, minimized environmental impact, and optimized
            operational efficiency across a diverse range of projects, fostering a secure
            and sustainable work environment.
          </p>
        </div>
      </div>
    </div>
    <!-- End Page Banner -->

    <section class="popular-courses pb-180 white-bg">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-10 popular-courses white-bg">
            <div class="row">
              <div
                class="col-md-3 col-lg-3"
                v-for="project in projects"
                :key="project.id"
              >
                <div class="single-course mb-30">
                  <a href="#" class="thumb-img">
                    <span class="overly"></span>
                    <img :src="'../' + project.featured_image" alt="Project Image" />
                  </a>

                  <div class="course-caption">
                    <h5 style="font-weight: 200">
                      <router-link
                        :to="{ name: 'project', params: { slug: project.slug } }"
                        style="color: #291770"
                        >{{ project.title }}</router-link
                      >
                    </h5>
                  </div>
                </div>
              </div>
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
  name: "projects",
  data() {
    return {
      bg: "assets/img/projects/project-bg.png",
      projects: [],
    };
  },
  created() {
    this.getProjects();
  },
  methods: {
    getProjects() {
      axios
        .get("/api/project/")
        .then((response) => (this.projects = response.data))
        .catch();
    },
  },
};
</script>
