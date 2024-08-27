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
    <section class="single-event-area py-80">
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
            <Services :active="'environmental-mgt'" />
          </div>
          <div class="col-lg-9">
            <div class="single-event-description">
              <img :src="'../' + environment" alt="Procurement" class="img-fluid mb-3" />
<h2>{{ title }}</h2>
              <p>
                We provide a comprehensive range of environmental services aimed at
                helping organizations enhance their environmental performance and embrace
                sustainability.
              </p>
              <p>
                At Kevron Group, we take pride in our team of dedicated and highly skilled
                multi-disciplinary experts. Our team comprises seasoned Environmental
                Consultants, Engineers, and Scientists who understand the vital role that
                environmental and sustainable practices play in shaping a better world for
                all its inhabitants. With a focus on innovation, compliance, and
                delivering concrete results, we are the perfect partner for organisations
                looking to make a positive impact on the environment.
              </p>
              <p>
                One of our standout services is the planning and preparation of technical
                reports for a wide range of projects, ensuring strict adherence to
                statutory requirements. Our expertise covers various essential areas,
                including Environmental Impact Assessment (EIA), Environmental and Social
                Impact Assessment (ESIA), Environmental Assessment (EA), Post Impact
                Assessment (PIA), Environmental Audit (EAR), Post-Commissioning Assessment
                (PCA), Environmental Due Diligence, Environmental Evaluation (EE), and
                more.
              </p>
              <p>
                At Kevron Group, we are not just a service provider; we are a partner in
                your journey towards a more sustainable and environmentally responsible
                future. Our unwavering commitment to excellence and sustainability sets us
                apart, making us the preferred choice for organizations that are dedicated
                to making a positive impact on our planet. Join us in shaping a greener
                and more sustainable tomorrow – together, we can make a difference.
              </p>
              <p><strong>Our range of EMS Services include:</strong></p>

              <ul class="course-accordion">
                <li class="course-accordion-list">
                  <h4 class="ca-section-title">Environmental Studies</h4>

                  <div class="course-accordion-content" style="display: none">
                    <div class="course-section-content">
                      <ul class="list p-3">
                        <li>
                          <i class="icofont-thin-double-right"></i> Environmental Impact
                          Assessment (EIA)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Post Impact Assessment
                          (PIA)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Environmental and
                          Social Impact Assessment (ESIA)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Environmental Audit
                          Reporting (EAR)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Environmental Due
                          Diligence (EDD)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Environmental
                          Assessment (EA)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Environmental
                          Implications Study (EIS)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Waste Management
                          Auditing
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Environmental and
                          Social Management Plan (ESMP)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Environmental
                          Management Plan (EMP)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Environmental
                          Sensitivity Index
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Environmental Research
                          and Development
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Waste Reduction Scheme
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Environmental
                          Management Benchmarking.
                        </li>
                      </ul>
                    </div>
                  </div>
                </li>

                <li class="course-accordion-list">
                  <h4 class="ca-section-title">Environmental Engineering</h4>

                  <div class="course-accordion-content">
                    <div class="course-section-content">
                      <ul class="list-unstyled p-3">
                        <li>
                          <i class="icofont-thin-double-right"></i> Construction of Fire
                          Hydrant and Hydraulic Lines
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Design and
                          Construction of Effluent Treatment Plant (ETP)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Design and
                          Construction of Oil-Water separator Pit (OWS)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Design and
                          Construction of Water Treatment Plant
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> ETP/OWS Periodic
                          Maintenance
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> General Chemical and
                          Mechanical Engineering Services.
                        </li>
                      </ul>
                    </div>
                  </div>
                </li>
                <li class="course-accordion-list">
                  <h4 class="ca-section-title">Environmental Management Services</h4>

                  <div class="course-accordion-content">
                    <div class="course-section-content">
                      <ul class="list-unstyled p-3">
                        <li>
                          <i class="icofont-thin-double-right"></i> Environmental
                          Monitoring
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Sustainability Report
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Hazardous Waste
                          Management
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i>
                          Non-Hazardous Waste Management (solid, gaseous, and effluent)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Environmental
                          Remediation
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Bioremediation (oil
                          spilled impacted area)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Stakeholder Engagement
                          & Intermediate Settlement.
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Licensing and Permits.
                        </li>
                      </ul>
                    </div>
                  </div>
                </li>
                <li class="course-accordion-list">
                  <h4 class="ca-section-title">Cleaning Services</h4>

                  <div class="course-accordion-content">
                    <div class="course-section-content">
                      <ul class="list-unstyled p-3">
                        <li>
                          <i class="icofont-thin-double-right"></i> Industrial Cleaning
                          (corporate cleaners supply)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Tank Cleaning (water
                          and petroleum product storage tank)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i>
                          Post Construction Cleaning (cleaning and general floor cleaning
                          after construction)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Septic Tank
                          Evacuation/Cleaning
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Office Complex
                          Cleaning
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Oil Spill/ Site
                          Clean-up.
                        </li>
                      </ul>
                    </div>
                  </div>
                </li>
                <li class="course-accordion-list">
                  <h4 class="ca-section-title">Pest Control</h4>

                  <div class="course-accordion-content">
                    <div class="course-section-content">
                      <ul class="list-unstyled p-3">
                        <li>
                          <i class="icofont-thin-double-right"></i> Industrial Fumigation
                          for Companies
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Reptile/Rodent
                          Eradication
                        </li>
                        <li><i class="icofont-thin-double-right"></i> Disinfections</li>
                        <li>
                          <i class="icofont-thin-double-right"></i>
                          General Pest Control for Residential and Industrial Facilities.
                        </li>
                      </ul>
                    </div>
                  </div>
                </li>
                <li class="course-accordion-list">
                  <h4 class="ca-section-title">
                    Manpower Training and Executive Development
                  </h4>

                  <div class="course-accordion-content">
                    <div class="course-section-content">
                      <ul class="list-unstyled p-3">
                        <li>
                          <i class="icofont-thin-double-right"></i> Environmental Impact
                          Assessment (EIA) approved by AOSH
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i>
                          ISO 14001:2015 Lead Auditor Course (Approved by CQI / IRCA)
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Environmental
                          Management and Sustainability Course
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Sustainability Course
                        </li>
                        <li>
                          <i class="icofont-thin-double-right"></i> Other Industry
                          Tailored Courses.
                        </li>
                      </ul>
                    </div>
                  </div>
                </li>
              </ul>
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
  name: "environmental-mgt",
  mounted() {
    window.scrollTo(0, 0);
  },
  components: {
    Services,
  },
  data() {
    return {
      environment: "assets/img/services/beautiful-natural-scenery.jpg",
      title: "Environmental Management & Sustainability",
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
          "Kevron particularly develop and deliver sustainable, innovative, timely and cost-effective environmental solutions aiming to promote excellent and quality services that exceed client’s expectations and provide value for money.",
        id: "desc",
      },
      {
        name: "keywords",
        content:
          "environmental management and sustainability, environments, environmental",
      },
      { name: "copyright", content: "Kevron Group" },
      { name: "language", content: "EN" },
      { name: "robots", content: "index,follow" },
      { name: "revised", content: "Sunday, April 18th, 2020, 5:15 pm" },
      {
        name: "abstract",
        content:
          "Kevron particularly develop and deliver sustainable, innovative, timely and cost-effective environmental solutions aiming to promote excellent and quality services that exceed client’s expectations and provide value for money.",
      },
      { name: "classification", content: "Business" },
      { name: "author", content: "Kevron Group" },
      { name: "designer", content: "Web Tags Ltd" },
      { name: "copyright", content: "2023" },
      { name: "owner", content: "Kayode V. Fowode" },
      { name: "subject", content: "Environmental Management &amp; Sustainability" },
      { name: "directory", content: "submission" },
      { name: "category", content: "business" },
      { name: "coverage", content: "Worldwide" },
      { name: "distribution", content: "Global" },
      { name: "rating", content: "General" },
      { name: "revisit-after", content: "7 days" },
      { property: "og:title", content: "Environmental Management &amp; Sustainability" },
      { property: "og:type", content: "website" },
      { property: "og:image", content: "" },
      { property: "og:site_name", content: "Kevron Group" },
      {
        property: "og:description",
        content:
          "Kevron particularly develop and deliver sustainable, innovative, timely and cost-effective environmental solutions aiming to promote excellent and quality services that exceed client’s expectations and provide value for money.",
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
