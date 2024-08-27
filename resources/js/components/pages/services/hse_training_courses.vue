<template>
  <div>
    <page-header></page-header>
    <page-nav active="service"></page-nav>
    <!-- Page Banner -->
    <div
      class="page-banner banner-bg-one"
      style="background-image: url(../../assets/img/10.jpg)"
    >
      <div class="container">
        <div class="banner-text">
          <h1 class="garamond page-title" style="font-size: 65px">
            HSE Training Courses
          </h1>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">
                HSE Training Courses
              </li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
    <!-- End Page Banner -->
    <section class="single-event-area py-80">
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
            <Services :active="'hse-courses'" />
          </div>
          <div class="col-lg-9">
            <div class="single-event-description">
              <div class="row">
                <div class="col-lg-4" v-for="(cat, index) in categories" :key="index">
                  <div class="single-course mb-3">
                    <a :href="'/courses/' + cat.slug" class="thumb-img">
                      <span class="overly"></span>
                      <img :src="'../../../' + cat.featured_image" alt="Course Image" />
                    </a>
                    <div class="course-caption">
                      <h6>
                        <a :href="'/courses/' + cat.slug" class="text-black">{{
                          cat.title
                        }}</a>
                      </h6>
                      <p style="font-size: 13px">
                        {{ cat.description }}
                      </p>
                      <a
                        :href="'/courses/' + cat.slug"
                        class="btn btn-primary btn-primary btn-sm"
                        >Read More</a
                      >
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Page Banner -->

    <page-footer></page-footer>
  </div>
</template>
<script>
import Services from "../../includes/services.vue";
export default {
  name: "hse-courses",
  components: { Services },
  mounted() {
    window.scrollTo(0, 0);
  },
  created() {
    this.getCategories();
  },
  data() {
    return {
      procurement: "assets/img/services/procurement.jpg",
      title: "HSE Training Courses",
      categories: [],
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
          "Kevron supplies quality and affordable Personal Protective Equipment (PPE) essential for the safety and protection of all individuals on site. You can choose from our extensive menu of PPE to help your organisation comply with workplace safety standards. These include: safety shoes, hard hats, respirators, gloves, earplugs, hi-vis, life jackets, coveralls and fall protection equipment and more.",
        id: "desc",
      },
      {
        name: "keywords",
        content:
          "ppe, personal protective equipment, safety shoes, hard hats, respirators, gloves, earplugs, life jackets, coveralls, safety, safety equipments, protection, hand protection, eye protection, ear protection",
      },
      { name: "copyright", content: "Kevron Group" },
      { name: "language", content: "EN" },
      { name: "robots", content: "index,follow" },
      { name: "revised", content: "Sunday, April 18th, 2020, 5:15 pm" },
      {
        name: "abstract",
        content:
          "Kevron supplies quality and affordable Personal Protective Equipment (PPE) essential for the safety and protection of all individuals on site. You can choose from our extensive menu of PPE to help your organisation comply with workplace safety standards. These include: safety shoes, hard hats, respirators, gloves, earplugs, hi-vis, life jackets, coveralls and fall protection equipment and more.",
      },
      { name: "classification", content: "Business" },
      { name: "author", content: "Kevron Group" },
      { name: "designer", content: "Web Tags Ltd" },
      { name: "copyright", content: "2023" },
      { name: "owner", content: "Kayode V. Fowode" },
      { name: "subject", content: "Procurement" },
      { name: "directory", content: "submission" },
      { name: "category", content: "business" },
      { name: "coverage", content: "Worldwide" },
      { name: "distribution", content: "Global" },
      { name: "rating", content: "General" },
      { name: "revisit-after", content: "7 days" },
      { property: "og:title", content: "Procurement" },
      { property: "og:type", content: "website" },
      { property: "og:image", content: "" },
      { property: "og:site_name", content: "Kevron Group" },
      {
        property: "og:description",
        content:
          "Kevron supplies quality and affordable Personal Protective Equipment (PPE) essential for the safety and protection of all individuals on site. You can choose from our extensive menu of PPE to help your organisation comply with workplace safety standards. These include: safety shoes, hard hats, respirators, gloves, earplugs, hi-vis, life jackets, coveralls and fall protection equipment and more.",
      },
      { property: "og:phone_number", content: "+234-13-424-578" },
      { property: "og:email", content: "info@kevrongroup.com" },
    ],
  },

  methods: {
    getCategories() {
      axios
        .get("/api/course-categories")
        .then((res) => (this.categories = res.data))
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
