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
              <img :src="'../' + strategic" alt="Strategic Safety Management" />
            </div>
            <div class="single-event-description">
              <h2>{{ title }}</h2>
              <p>
                Our strategic safety management service provides high level QHSSE advice
                to clients in order to support them in governing and managing their
                businesses or major projects / programmes.
              </p>
              <p>
                The service is tailored to enable clients to meet their moral, legal,
                economic and corporate social responsibilities under current health and
                safety legislation and can be accredited to ISO 45001 and / or ISO 9000
                standards. The service can range from the development and implementation
                of a total integrated safety and / or environmental management system to a
                specific element of safety and environmental management.
              </p>
              <p>
                Our services include an evaluation of the existing provision to support
                the development of:
              </p>

              <ul class="list-unstyled">
                <li><i class="icofont-thin-double-right"></i> Vision and strategy</li>
                <li>
                  <i class="icofont-thin-double-right"></i> Policy for environmental and
                  safety
                </li>
                <li>
                  <i class="icofont-thin-double-right"></i> Systems and processes for
                  delivery
                </li>
                <li>
                  <i class="icofont-thin-double-right"></i> Staff / supplier behaviour and
                  culture
                </li>
                <li>
                  <i class="icofont-thin-double-right"></i> Performance and benchmarking
                </li>
              </ul>
              <hr />
              <h5>Why Choose Us</h5>
              <p>Our clients appoint us as strategic advisor because:</p>
              <ul class="list-unstyled">
                <li>
                  <i class="icofont-thin-double-right"></i> Our approach is always bespoke
                  to your operational risks and needs and implemented in conjunction with
                  your staff to encourage a greater understanding and ownership.
                </li>
                <li>
                  <i class="icofont-thin-double-right"></i> Our people are experienced
                  health and safety practitioners and we have an outstanding track record
                  in improving safety and environmental management.
                </li>
                <li>
                  <i class="icofont-thin-double-right"></i> Our approach provides
                  appropriate and proportionate deployment / transfer of risk to give
                  clients greater control over their expenditure.
                </li>
                <li>
                  <i class="icofont-thin-double-right"></i> Our practical approach and
                  extensive experience in the implementation of safety, health and
                  environmental initiatives; we only put forward manageable, practical
                  solutions for our clients.
                </li>
                <li>
                  <i class="icofont-thin-double-right"></i> Our strategic advice has
                  supported clients in making significant savings by militating against
                  lost productivity and driving efficiency into their working practices.
                </li>
              </ul>
              <hr />
              <h5>Typical Benefits</h5>
              <ul class="list-unstyled">
                <li>
                  <i class="icofont-thin-double-right"></i> Reduced losses and damages to
                  raw materials, products, property or plant through more effective
                  safety, health and quality management; reducing the cost of operating
                  and maintaining assets
                </li>
                <li>
                  <i class="icofont-thin-double-right"></i> Reduced absence (sickness,
                  accidents and incidents)
                </li>
                <li>
                  <i class="icofont-thin-double-right"></i> Improved productivity and
                  higher quality outputs through safer, more effective working practices,
                  higher levels of compliance, assurance and measurement; reducing the
                  risk of fines and prosecution an improved quality and safety culture and
                  stronger staff morale.
                </li>
                <li>
                  <i class="icofont-thin-double-right"></i> Better management of risk
                  through the supply chain; transferring cost out of the business
                </li>
                <li>
                  <i class="icofont-thin-double-right"></i> To help our clients appreciate
                  improvements we develop a KPI set with them from the outset of the
                  appointment to clearly demonstrate success including those often
                  difficult to measure criteria i.e. behavioural / cultural change.
                </li>
              </ul>
              <p>
                While the full range of outputs and benefits will depend upon each
                client's bespoke needs, we will regularly compile information that
                communicates success through the award of a recognised accreditation (ISO
                45001 / ISO 9000/ ISO 14001) or focused key performance indicators (KPI)
                that are designed against agreed performance targets from the outset of
                the appointment.
              </p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 my-3">
          <Consultancy :active="'strategic-safety'" />
        </div>
      </div>
    </div>

    <page-footer></page-footer>
  </div>
</template>
<script>
import Consultancy from "./../../includes/consultancy.vue";
export default {
  name: "strategic-safety",
  mounted() {
    window.scrollTo(0, 0);
  },
  components: {
    Consultancy,
  },
  data() {
    return {
      strategic: "assets/img/services/safety-management.jpg",
      title: "Strategic Safety Management",
      bg: "assets/img/heath-and-safety-consultancy.jpg",
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
          "Our strategic safety management service provides high level QHSSE advice to clients in order to support them in governing and managing their businesses or major projects / programmes. ",
        id: "desc",
      },
      {
        name: "keywords",
        content: " strategic safety manangement, qhsse, health and safety",
      },
      { name: "copyright", content: "Kevron Group" },
      { name: "language", content: "EN" },
      { name: "robots", content: "index,follow" },
      { name: "revised", content: "Sunday, April 18th, 2020, 5:15 pm" },
      {
        name: "abstract",
        content:
          "Our strategic safety management service provides high level QHSSE advice to clients in order to support them in governing and managing their businesses or major projects / programmes. ",
      },
      { name: "classification", content: "Business" },
      { name: "author", content: "Kevron Group" },
      { name: "designer", content: "Web Tags Ltd" },
      { name: "copyright", content: "2023" },
      { name: "owner", content: "Kayode V. Fowode" },
      { name: "subject", content: " Stategic Safety Management" },
      { name: "directory", content: "submission" },
      { name: "category", content: "business" },
      { name: "coverage", content: "Worldwide" },
      { name: "distribution", content: "Global" },
      { name: "rating", content: "General" },
      { name: "revisit-after", content: "7 days" },
      { property: "og:title", content: " Stategic Safety Management" },
      { property: "og:type", content: "website" },
      { property: "og:image", content: "" },
      { property: "og:site_name", content: "Kevron Group" },
      {
        property: "og:description",
        content:
          "Our strategic safety management service provides high level QHSSE advice to clients in order to support them in governing and managing their businesses or major projects / programmes. ",
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
