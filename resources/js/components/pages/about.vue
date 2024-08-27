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
          <h1 class="garamond page-title" style="font-size: 65px">About Us</h1>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">About Us</li>
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
            <AboutMenu :current="'about'" />
          </div>
          <div class="col-lg-9">
            <div class="single-event-description">
              <img :src="'../../' + about" class="img-fluid mb-3" alt="" />

              <p>
                We are a leading provider of health, safety, and environmental (HSE)
                services, registered in United Kingdom (UK), Nigeria and South Africa.
                Kevron Consulting also has strong presence in Ghana, and we will be glad
                to extend our HSE services to you wherever you are globally.
              </p>

              <p>
                Our team of HSE experts is led by a Chartered Fellow Safety and Health
                Practitioner (CFIOSH) and COREN Registered Engineer (FNSE). As such, our
                clients are confident of receiving the highest possible standard of
                support and service reasonably expected of us.
              </p>

              <p>
                We understand the critical importance of maintaining health, safety, and
                environmental standards in today's fast-paced and evolving business
                landscape. Our mission is to ensure that individuals and organisations are
                equipped with the necessary tools, knowledge, and resources to mitigate
                risks and promote a culture of safety.
              </p>

              <p>
                We are known for assisting organisations in setting HSE strategies and
                build culture that promote effective operations and maintain a safe and
                healthy environment. We also help our clients to plan for and manage
                physical and operational HSE risks across production value chain, projects
                lifecycle, and entire network of business entities and assets while also
                enhancing efficiencies and reducing costs.
              </p>

              <p>
                We believe in the power of partnerships and collaboration. Our dedicated
                team works closely with our clients and business partners to provide
                tailored solutions that address their unique needs. By delivering
                practical and effective solutions, we enable our clients to meet
                regulatory requirements, safeguard their workforce, protect their assets
                and achieve projects / business HSE objectives. Our commitment to
                excellence and professionalism has earned us a trusted reputation in the
                field of health, safety, and environmental services.
              </p>

              <p>
                As we continue to expand our presence across Europe and Africa, we remain
                steadfast in our commitment to supporting our clients and business
                partners in building a safe world of work and achieving safety excellence.
                We embrace innovation and stay abreast of the latest industry developments
                to ensure that our services are at the forefront of health, safety, and
                environmental practices.
              </p>
              <p>
                Contact us today to learn more about how Kevron Consulting can help you
                achieve your HSE objectives. Together, let us create a safe and positive
                work environment and sustainable future for your organization and the
                communities we serve.
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
import AboutMenu from "../includes/about.vue";
export default {
  name: "about",
  components: { AboutMenu },
  mounted() {
    window.scrollTo(0, 0);
  },

  data() {
    return {
      about: "assets/img/safety.webp",
      title: "About ",
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
          "Kevron Group is a Quality, Health, Safety, Security Environmental (QHSSE) consultancy and Training Company offering services to clients anywhere in the world covering: Strategic Safety Management, Asset Safety Management, Project Safety Management, Research and Publications, Manpower Recruitment, Security Services, Procurement and QHSSE Training.",
        id: "desc",
      },
      {
        name: "keywords",
        content:
          "health and safety, qhsse, qhsse consultancy, qhsse training, project safety management, iosh, abiosh, idse",
      },
      { name: "copyright", content: "Kevron Group" },
      { name: "language", content: "EN" },
      { name: "robots", content: "index,follow" },
      { name: "revised", content: "Sunday, April 18th, 2020, 5:15 pm" },
      {
        name: "abstract",
        content:
          "Kevron Group is a Quality, Health, Safety, Security Environmental (QHSSE) consultancy and Training Company offering services to clients anywhere in the world covering: Strategic Safety Management, Asset Safety Management, Project Safety Management, Research and Publications, Manpower Recruitment, Security Services, Procurement and QHSSE Training.",
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
      { property: "og:title", content: "About Kevron Group" },
      { property: "og:type", content: "website" },
      { property: "og:image", content: "" },
      { property: "og:site_name", content: "Kevron Group" },
      {
        property: "og:description",
        content:
          "Kevron Group is a Quality, Health, Safety, Security Environmental (QHSSE) consultancy and Training Company offering services to clients anywhere in the world covering: Strategic Safety Management, Asset Safety Management, Project Safety Management, Research and Publications, Manpower Recruitment, Security Services, Procurement and QHSSE Training.",
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
