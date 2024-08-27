<template>
  <div>
    <page-header></page-header>
    <page-nav active="courses"></page-nav>
    <!-- Page Banner -->
    <div
      class="page-banner banner-bg-one"
      style="background-image: url(../../assets/img/training.jpg)"
    >
      <div class="container">
        <div class="banner-text">
          <h1 class="garamond page-title" style="font-size: 65px">
            {{ category.title }}
          </h1>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">
                {{ category.title }}
              </li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
    <!-- End Page Banner -->

    <section class="popular-courses pt-50 pb-180 white-bg">
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
            <Courses :active="slug" />
          </div>
          <div class="col-lg-9">
            <div class="row" v-if="courses.length != 0">
              <div class="col-md-4 col-lg-4" v-for="course in courses" :key="course.id">
                <div class="single-course mb-30">
                  <a
                    :href="'/courses/' + category.slug + '/' + course.slug"
                    class="thumb-img"
                  >
                    <span class="overly"></span>
                    <img :src="'../../' + course.featured_image" :alt="course.title" />
                  </a>

                  <div class="course-caption">
                    <h6 style="font-weight: 200; color: #291770">
                      <a
                        :href="'/courses/' + category.slug + '/' + course.slug"
                        style="color: #291770"
                      >
                        {{ course.title }}</a
                      >
                    </h6>
                  </div>
                </div>
              </div>
            </div>
            <div class="row" v-else>
              <div class="col-lg-12 bg-danger text-center text-white p-3">
                <strong>Whoops!</strong> Course has not been added yet.
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
import Courses from "../../includes/courses.vue";
export default {
  name: "courses",
  components: { Courses },

  mounted() {
    window.scrollTo(0, 0);
  },
  data() {
    return {
      courses: [],
      category: "",
      slug: "",
    };
  },
  created() {
    this.getCourseCategory();
    this.getCourses();
  },
  methods: {
    subStr(string) {
      return string.substr(0, 50);
    },
    getCourseCategory() {
      this.slug = this.$route.params.slug;
      axios
        .get("/api/course-category/" + this.slug)
        .then((response) => (this.category = response.data))
        .catch();
    },
    getCourses() {
      this.slug = this.$route.params.slug;
      axios
        .get("/api/courses/" + this.slug)
        .then((response) => (this.courses = response.data))
        .catch();
    },
  },
};
</script>
<style scoped>
.list li {
  list-style: none;
}

.pr-3 {
  padding-right: 1rem !important;
}

.pb-3 {
  padding-bottom: 1rem !important;
}

.pl-3 {
  padding-left: 1rem !important;
}
</style>
