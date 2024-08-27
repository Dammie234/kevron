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
    <div class="container">
      <div class="row justify-content-center py-80">
        <div class="col-lg-9">
          <div class="single-event-area">
            <div class="single-preview-img">
              <img
                :src="'../' + iso"
                alt="Management System Implementation / ISO Certification"
              />
            </div>
            <div class="single-event-description">
              <h2>{{ title }}</h2>
              <p>
                We have helped organizations of all sizes in acquiring the ISO
                Certification. We have great resources and support services to help your
                organisation in acquiring ISO CERTIFICATION.
              </p>
              <p>
                We are confident that acquiring the ISO Certification will help the
                organizations not only to carry out audits and reviews to identify,
                correct and prevent problems but also to reduce workplace incidents and
                the cost of insurance premiums.
              </p>
              <p>
                Our aim is to be the provider of your choice and we look forward to
                working with your organization. To help your organization implement ISO
                CERTIFICATION, and gain certification to any management system of your
                choice, Kevron Consulting Limited will work with you to make sure that
                nothing is missed during your implementation and preparations
                for certification.
              </p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 my-3">
          <Consultancy :active="'management-system'" />
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
  name: "management_system",
  mounted() {
    window.scrollTo(0, 0);
  },
  components: {
    Consultancy,
  },
  data() {
    return {
      iso: "assets/img/services/iso-9001.jpg",
      title: "Management System Implementation / ISO Certification",
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
          "We have helped organizations of all sizes in acquiring the ISO Certification. We have great resources and support services to help your organisation in acquiring ISO CERTIFICATION.",
        id: "desc",
      },
      {
        name: "keywords",
        content: "iso certification, management system, certification, auditors",
      },
      { name: "copyright", content: "Kevron Group" },
      { name: "language", content: "EN" },
      { name: "robots", content: "index,follow" },
      { name: "revised", content: "Sunday, April 18th, 2020, 5:15 pm" },
      {
        name: "abstract",
        content:
          "We have helped organizations of all sizes in acquiring the ISO Certification. We have great resources and support services to help your organisation in acquiring ISO CERTIFICATION.",
      },
      { name: "classification", content: "Business" },
      { name: "author", content: "Kevron Group" },
      { name: "designer", content: "Web Tags Ltd" },
      { name: "copyright", content: "2023" },
      { name: "owner", content: "Kayode V. Fowode" },
      {
        name: "subject",
        content: "Management System Implementation / ISO Certification",
      },
      { name: "directory", content: "submission" },
      { name: "category", content: "business" },
      { name: "coverage", content: "Worldwide" },
      { name: "distribution", content: "Global" },
      { name: "rating", content: "General" },
      { name: "revisit-after", content: "7 days" },
      {
        property: "og:title",
        content: "Management System Implementation / ISO Certification",
      },
      { property: "og:type", content: "website" },
      { property: "og:image", content: "" },
      { property: "og:site_name", content: "Kevron Group" },
      {
        property: "og:description",
        content:
          "We have helped organizations of all sizes in acquiring the ISO Certification. We have great resources and support services to help your organisation in acquiring ISO CERTIFICATION.",
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
