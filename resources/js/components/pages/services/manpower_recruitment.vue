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
            HSE Manpower Supply &amp; Recruitment
          </h1>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">
                HSE Manpower Supply &amp; Recruitment
              </li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
    <!-- End Page Banner -->
    <!-- Page Banner -->
    <section class="single-event-area py-80">
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
            <Services :active="'manpower-recruitment'" />
          </div>
          <div class="col-lg-9">
            <div class="single-event-description">
              <img
                :src="'../' + manpower"
                alt="Manpower Recruitment &amp; Outsourcing"
                class="img-fluid mb-3"
              />
              <h2>{{ title }}</h2>
              <p>
                At Kevron, we help organisation recruit, retain and cultivate key talent
                personnel. Your organization may have a specific short-term recruiting
                need that is just as mission critical as finding the right talent for the
                long-term. We provide QHSSE Professionals to support your project and
                offer QHSSE advisory services for your business, our QHSSE experts will
                help you analyse projects/ work environment and design programs to
                control, eliminate, and prevent diseases or injuries.
              </p>
              <p>
                We can provide you with competent experts across different discipline to
                support your project and / or business needs such as HSE Manager, QHSSE
                Coordinators, QHSSE Advisors, Project Safety Managers, Security Managers,
                Project Managers, and Construction Managers etc.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <page-footer></page-footer>
  </div>
</template>
<script>
import Services from "../../includes/services.vue";
export default {
  name: "manpower-recuitment-and-outsourcing",
  components: { Services },
  mounted() {
    window.scrollTo(0, 0);
  },
  data() {
    return {
      manpower: "assets/img/services/manpower.jpg",
      title: "Manpower Recruitment & Outsourcing",
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
          "We provide QHSSE Professionals to support your project and offer QHSSE advisory services for your business. Our QHSSE experts will help you analyse projects/ work environment and design programs to control, eliminate, and prevent diseases or injuries.",
        id: "desc",
      },
      {
        name: "keywords",
        content:
          "manpower, recruitment, outsourcing, manpower recruitment and outsourcing, qhsse, qhsse advisory, hse manager, qhsse coordinator, qhsse advisor, project safety managers, security managers, project managers, construction managers, vetting services, manpower outsourcing, manpower recruitment, employee vetting, executive search, interim solution, identity checks,best outsourcing agency & manpower services,manpower sourcing companies,outsource manpower agency,companies looking for manpower outsourcing,ehs management",
      },
      { name: "copyright", content: "Kevron Group" },
      { name: "language", content: "EN" },
      { name: "robots", content: "index,follow" },
      { name: "revised", content: "Sunday, April 18th, 2020, 5:15 pm" },
      {
        name: "abstract",
        content:
          "We provide QHSSE Professionals to support your project and offer QHSSE advisory services for your business. Our QHSSE experts will help you analyse projects/ work environment and design programs to control, eliminate, and prevent diseases or injuries.",
      },
      { name: "classification", content: "Business" },
      { name: "author", content: "Kevron Group" },
      { name: "designer", content: "Web Tags Ltd" },
      { name: "copyright", content: "2023" },
      { name: "owner", content: "Kayode V. Fowode" },
      { name: "subject", content: "Manpower Recruitment & Outsourcing" },
      { name: "directory", content: "submission" },
      { name: "category", content: "business" },
      { name: "coverage", content: "Worldwide" },
      { name: "distribution", content: "Global" },
      { name: "rating", content: "General" },
      { name: "revisit-after", content: "7 days" },
      { name: "og:title", content: "Manpower Recruitment & Outsourcing" },
      { name: "og:type", content: "website" },
      { name: "og:image", content: "" },
      { name: "og:site_name", content: "Kevron Group" },
      {
        name: "og:description",
        content:
          "We provide QHSSE Professionals to support your project and offer QHSSE advisory services for your business. Our QHSSE experts will help you analyse projects/ work environment and design programs to control, eliminate, and prevent diseases or injuries.",
      },
      { name: "og:phone_number", content: "+234-13-424-578" },
      { name: "og:email", content: "info@kevrongroup.com" },
    ],
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
