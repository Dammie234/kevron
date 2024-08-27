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
            Technical Safety Studies / Process Safety Engineering
          </h1>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">
                Technical Safety Studies / Process Safety Engineering
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
            <Services :active="'technical-safety-studies'" />
          </div>
          <div class="col-lg-9">
            <div class="single-event-description">
              <img
                :src="'../' + procurement"
                alt="Technical Safety Studies / Process Safety Engineering"
                class="img-fluid mb-3"
              />
              <h2>{{ title }}</h2>
              <p>
                We are a leading provider of specialized technical safety studies for
                highly hazardous industry including process, chemical, oil & gas and FMCG
                industry etc.
              </p>
              <p>
                We employ leading-edge methodologies and advanced tools to conduct
                thorough safety studies, identifying potential hazards and assessing risks
                at every stage of your operations.
              </p>

              <p>
                Over the years we have built trust and confidence in our clients by
                providing the highest possible standard of service that meets their
                expectation.
              </p>
              <p>
                Kevron Consulting Limited has continuously enjoyed excellent record in
                offering Consultancy Services and providing industry-wide QHSSE services.
                Our approach to consultancy services is unique and tailored towards
                meeting individual clients’ needs.
              </p>
              <p>
                We have also supported organisations in implementing
                <strong
                  >Explosion Protection Design, Process Safety Audit, HAZOP Study, HAZID,
                  Facility Safeguarding Study
                </strong>
                and Other technical studies, to drive asset protection, as well as safety
                and health of personnel.
              </p>
              <p>
                <strong
                  >At Kevron, we specialize in a wide range of Technical Safety Studies,
                  including:</strong
                >
              </p>
              <ul class="course-accordion mb-30">
                <li class="course-accordion-list">
                  <h4 class="ca-section-title">HAZOP Study</h4>

                  <div class="course-accordion-content" style="display: none">
                    <div class="course-section-content">
                      <p class="p-3">
                        Our expert team conducts comprehensive Hazard and Operability
                        (HAZOP) studies to identify potential hazards and operational
                        issues, ensuring the safety and reliability of your processes.
                      </p>
                    </div>
                  </div>
                </li>

                <li class="course-accordion-list">
                  <h4 class="ca-section-title">Safety Case</h4>

                  <div class="course-accordion-content">
                    <div class="course-section-content">
                      <p class="p-3">
                        We assist in developing robust Safety Cases, providing a
                        systematic and structured approach to manage safety risks and meet
                        regulatory requirements.
                      </p>
                    </div>
                  </div>
                </li>
                <li class="course-accordion-list">
                  <h4 class="ca-section-title">
                    Safety Critical Elements and Performance Standards
                  </h4>

                  <div class="course-accordion-content">
                    <div class="course-section-content">
                      <p class="p-3">
                        Our consultants help define safety critical elements and establish
                        performance standards to ensure their integrity and effectiveness
                        in mitigating risks.
                      </p>
                    </div>
                  </div>
                </li>
                <li class="course-accordion-list">
                  <h4 class="ca-section-title">Hazard Identification (HAZID)</h4>

                  <div class="course-accordion-content">
                    <div class="course-section-content">
                      <p class="p-3">
                        Through rigorous Hazard Identification (HAZID) assessments, we
                        identify potential hazards, enabling you to proactively manage and
                        mitigate risks.
                      </p>
                    </div>
                  </div>
                </li>
                <li class="course-accordion-list">
                  <h4 class="ca-section-title">
                    BOW-TIE Analysis of Major Accident Hazards (MAHs)
                  </h4>

                  <div class="course-accordion-content">
                    <div class="course-section-content">
                      <p class="p-3">
                        Utilizing industry-leading bow-tie XP software, we perform
                        in-depth BOW-TIE analyses of Major Accident Hazards (MAHs),
                        providing valuable insights into risk control measures.
                      </p>
                    </div>
                  </div>
                </li>
                <li class="course-accordion-list">
                  <h4 class="ca-section-title">
                    Fire and Explosion Risk Assessment (FERA)
                  </h4>

                  <div class="course-accordion-content">
                    <div class="course-section-content">
                      <p class="p-3">
                        Our skilled professionals conduct comprehensive Fire and Explosion
                        Risk Assessments (FERAs) to evaluate and mitigate potential risks
                        associated with fire and explosion hazards.
                      </p>
                    </div>
                  </div>
                </li>
                <li class="course-accordion-list">
                  <h4 class="ca-section-title">
                    Emergency Evacuation, Escape, and Rescue Assessment (EEERA)
                  </h4>

                  <div class="course-accordion-content">
                    <div class="course-section-content">
                      <p class="p-3">
                        We evaluate emergency evacuation procedures, escape routes, and
                        rescue plans, ensuring the safety and well-being of personnel
                        during critical situations.
                      </p>
                    </div>
                  </div>
                </li>
              </ul>
              <p>
                In addition to the above, our expertise extends to Explosion Protection
                Design, Process Safety Management, and Risk Management. We work closely
                with clients to develop tailored solutions that align with industry best
                practices and regulatory requirements.
              </p>
              <p>
                At Kevron, we are dedicated to delivering high-quality Technical Safety
                Studies, leveraging our extensive knowledge and practical experience. Our
                goal is to assist you in achieving a safe and compliant working
                environment while minimizing risks and enhancing operational efficiency.
              </p>
              <p>
                Contact us today to discuss your Technical Safety Study requirements, and
                let Kevron Consulting be your trusted partner in safety and risk
                management.
              </p>
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
  name: "technical-safety-studies",
  components: { Services },
  mounted() {
    window.scrollTo(0, 0);
  },
  data() {
    return {
      procurement: "assets/img/services/technical.jpg",
      title: "Technical Safety Studies / Process Safety Engineering",
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
