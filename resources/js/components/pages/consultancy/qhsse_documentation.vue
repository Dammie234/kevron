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
    <!-- End Page Banner -->
    <!-- Page Banner -->
    <div class="container">
      <div class="row justify-content-center py-80">
        <div class="col-lg-9">
          <div class="single-event-area">
            <div class="single-preview-img">
              <img :src="'../' + qhsse" alt="QHSSE Documentation" />
            </div>
            <div class="single-event-description">
              <h2>{{ title }}</h2>
              <p>
                The law requires all employers to ensure the health, safety and welfare of
                their employees and to ensure adequate arrangements are put in place to
                guarantee their safety and well-being.
              </p>
              <p>
                In meeting this regulatory requirements and align with the minimum
                standard of practice expected by the regulators like Lagos State Safety
                Commission, the Factory Inspectors etc., Fire Service etc., it is
                important that the necessary documentation in support of your QHSSE
                Management System is developed and documented as required by the
                regulatory agencies and applicable guidance.
              </p>
              <p>
                Our Consultants can provide your organisation with the necessary advice
                and guidance on how to improve your health and safety management system.
                These include carrying out a General Health and Safety Inspection of your
                facility / workplace together with preparing the necessary documentation
                required by law and the regulators.
              </p>
              <hr />
            </div>
          </div>
        </div>
        <div class="col-lg-3 my-3">
          <Consultancy :active="'qhsse-documentation'" />
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
  name: "qhsse-documentation",
  mounted() {
    window.scrollTo(0, 0);
  },
  components: {
    Consultancy,
  },
  data() {
    return {
      qhsse: "assets/img/services/documentation.jpg",
      title: "QHSSE Documentation",
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
          "The law requires all employers to ensure the health, safety and welfare of their employees and to ensure adequate arrangements are put in place to guarantee their safety and well-being.",
        id: "desc",
      },
      {
        name: "keywords",
        content:
          "qhsse documentation, health and safety, hse, documentation, fire risk assessment, fire safety inspection, fire safety, fire hazards",
      },
      { name: "copyright", content: "Kevron Group" },
      { name: "language", content: "EN" },
      { name: "robots", content: "index,follow" },
      { name: "revised", content: "Sunday, April 18th, 2020, 5:15 pm" },
      {
        name: "abstract",
        content:
          "The law requires all employers to ensure the health, safety and welfare of their employees and to ensure adequate arrangements are put in place to guarantee their safety and well-being.",
      },
      { name: "classification", content: "Business" },
      { name: "author", content: "Kevron Group" },
      { name: "designer", content: "Web Tags Ltd" },
      { name: "copyright", content: "2023" },
      { name: "owner", content: "Kayode V. Fowode" },
      { name: "subject", content: "QHSSE Documentation" },
      { name: "directory", content: "submission" },
      { name: "category", content: "business" },
      { name: "coverage", content: "Worldwide" },
      { name: "distribution", content: "Global" },
      { name: "rating", content: "General" },
      { name: "revisit-after", content: "7 days" },
      { property: "og:title", content: "QHSSE Documentation" },
      { property: "og:type", content: "website" },
      { property: "og:image", content: "" },
      { property: "og:site_name", content: "Kevron Group" },
      {
        property: "og:description",
        content:
          "The law requires all employers to ensure the health, safety and welfare of their employees and to ensure adequate arrangements are put in place to guarantee their safety and well-being.",
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
