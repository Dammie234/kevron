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
      <div class="row py-80">
        <div class="col-lg-9">
          <div class="single-event-area">
            <div class="single-preview-img">
              <img :src="'../' + asset" alt="Asset Safety Management" />
            </div>
            <div class="single-event-description">
              <h2>{{ title }}</h2>
              <p>
                We support the implementation of safety management systems to operate and
                maintain safe and effective assets. Our HSE Consultants have significant
                experience of working with clients across a range of sectors to optimise
                their approach to compliance and improve their general health and safety
                culture.
              </p>
              <p>
                If you are struggling to manage your HSE obligations then our HSE
                outsourcing product can provide you with the resources you need to manage
                safety at your premises and/ or assets while our fire risk assessment
                consultants can provide expert resources as at when required.
              </p>
              <p>
                Our compliance management service can help you understand how effective
                your systems are while our HSE training service can support you in
                developing a positive safety culture by helping staff acquire the skills
                and behaviours they need to operate to the required standard within your
                business.
              </p>
              <h5>Our areas of expertise include:</h5>
              <ul class="list-unstyled">
                <li><i class="icofont-thin-double-right"></i> Asset Safety Management</li>
                <li>
                  <i class="icofont-thin-double-right"></i> Fire Consultancy & Risk
                  Management
                </li>
                <li><i class="icofont-thin-double-right"></i> Compliance Management</li>
                <li>
                  <i class="icofont-thin-double-right"></i> People Development-training
                </li>
                <li><i class="icofont-thin-double-right"></i> HSE Outsourced Manager</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-3 my-3">
          <Consultancy :active="'asset-safety'" />
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
  name: "asset-safety",
  mounted() {
    window.scrollTo(0, 0);
  },
  components: {
    Consultancy,
  },
  data() {
    return {
      asset: "assets/img/services/asset-safety.jpg",
      title: "Asset Safety Management",
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
          "We support the implementation of safety management systems to operate and maintain safe and effective assets.",
        id: "desc",
      },
      {
        name: "keywords",
        content:
          " asset safety management, health and safety, hse, safety, safety management",
      },
      { name: "copyright", content: "Kevron Group" },
      { name: "language", content: "EN" },
      { name: "robots", content: "index,follow" },
      { name: "revised", content: "Sunday, April 18th, 2020, 5:15 pm" },
      {
        name: "abstract",
        content:
          "We support the implementation of safety management systems to operate and maintain safe and effective assets.",
      },
      { name: "classification", content: "Business" },
      { name: "author", content: "Kevron Group" },
      { name: "designer", content: "Web Tags Ltd" },
      { name: "copyright", content: "2023" },
      { name: "owner", content: "Kayode V. Fowode" },
      { name: "subject", content: "Asset Safety Management" },
      { name: "directory", content: "submission" },
      { name: "category", content: "business" },
      { name: "coverage", content: "Worldwide" },
      { name: "distribution", content: "Global" },
      { name: "rating", content: "General" },
      { name: "revisit-after", content: "7 days" },
      { property: "og:title", content: "Asset Safety Management" },
      { property: "og:type", content: "website" },
      { property: "og:image", content: "" },
      { property: "og:site_name", content: "Kevron Group" },
      {
        property: "og:description",
        content:
          "We support the implementation of safety management systems to operate and maintain safe and effective assets.",
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
