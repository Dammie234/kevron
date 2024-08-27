<template>
  <div>
    <page-header></page-header>
    <page-nav active="about"></page-nav>
    <!-- Page Banner -->
    <div
      class="page-banner banner-bg-one"
      style="
        background-image: url(../../assets/img/black-female-architect-civil-engineers-with-protective-face-masks-talking-construction-site.jpg);
      "
    >
      <div class="container">
        <div class="banner-text">
          <h1 class="garamond page-title" style="font-size: 65px">Our Offices</h1>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Our Offices</li>
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
            <AboutMenu :current="'our-offices'" />
          </div>
          <div class="col-lg-9">
            <p>
              We are thrilled to have you here. Our main goal at Kevron is to provide
              outstanding Technical and Occupational Health, Safety, and Environment (HSE)
              consultancy and training services to our clients.
            </p>
            <p>
              We are thrilled to have you here. Our main goal at Kevron is to provide
              outstanding Technical and Occupational Health, Safety, and Environment (HSE)
              consultancy and training services to our clients.
            </p>
            <p>
              Our team is knowledgeable and friendly and they are eager to assist you and
              provide the guidance you are looking for. For those who prefer a more
              personal touch, we invite you to visit any of our country. Our offices are
              equipped with HSE Consultants who specialize in their respective fields.
              They are available for comprehensive discussions tailored specifically for
              your requirements.
            </p>
            <p>
              Their commitment is to address your concerns explore potential solutions and
              meet your HSE needs with professionalism and expertise. At Kevron we highly
              value your time and strive to deliver exceptional customer service.
            </p>
            <p>
              We really look forward to hearing from you soon and being able to help you
              in any way possible. Your satisfaction is our top priority because we
              genuinely care about providing the best experience for our clients.
            </p>
            <div class="row mt-3">
              <div class="col-lg-6">
                <h4>Africa</h4>
                <table class="table table-bordered mt-10">
                  <tbody>
                    <tr>
                      <td>
                        <a href="/locations/nigeria" class="lead"
                          ><strong>Kevron in Nigeria</strong></a
                        >
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <a href="/locations/ghana" class="lead"
                          ><strong>Kevron in Ghana</strong></a
                        >
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <a href="/locations/south-africa" class="lead"
                          ><strong>Kevron in South Africa</strong></a
                        >
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="col-lg-6">
                <h4>United Kingdom</h4>
                <table class="table table-bordered mt-10">
                  <tbody>
                    <tr>
                      <td>
                        <a href="/locations/united-kingdom" class="lead"
                          ><strong>Kevron in UK</strong></a
                        >
                      </td>
                    </tr>
                  </tbody>
                </table>
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
import AboutMenu from "../../includes/about.vue";
export default {
  name: "locations",
  components: { AboutMenu },
  mounted() {
    window.scrollTo(0, 0);
  },
  data() {
    return {
      values: "assets/img/core-values.jpg",
      title: "Locations",
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
        content: "",
        id: "desc",
      },
      {
        name: "keywords",
        content: "",
      },
      { name: "copyright", content: "Kevron Group" },
      { name: "language", content: "EN" },
      { name: "robots", content: "index,follow" },
      { name: "revised", content: "Sunday, April 18th, 2020, 5:15 pm" },
      {
        name: "abstract",
        content: "",
      },
      { name: "classification", content: "Business" },
      { name: "author", content: "Kevron Group" },
      { name: "designer", content: "Web Tags Ltd" },
      { name: "copyright", content: "2023" },
      { name: "owner", content: "Kayode V. Fowode" },
      { name: "subject", content: "About Kevron Group" },
      { name: "directory", content: "submission" },
      { name: "category", content: "business" },
      { name: "coverage", content: "Worldwide" },
      { name: "distribution", content: "Global" },
      { name: "rating", content: "General" },
      { name: "revisit-after", content: "7 days" },
      { name: "og:title", content: "About Kevron Group" },
      { name: "og:type", content: "website" },
      { name: "og:image", content: "" },
      { name: "og:site_name", content: "Kevron Group" },
      {
        name: "og:description",
        content: "",
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
