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
          <h1 class="garamond page-title" style="font-size: 65px">Core Values</h1>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Core Values</li>
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
            <AboutMenu :current="'core-values'" />
          </div>
          <div class="col-lg-9">
            <div class="text-center">
              <img :src="'../../' + values" class="img-fluid mb-3" alt="" />
            </div>
            <p>
              At Kevron, we consider our people as the source of our success and we set
              high standards of performance and ethical behaviours. We are judged by how
              we act – our reputation is upheld by how we live up to our core values of
              integrity, service, reliability, respects for people, competency and better
              outcome are shared amongst all.
            </p>
            <p>
              Our corporate values are a critical part of who we are as a company. They
              are our fundamental beliefs. They guide our actions. They influence the way
              we work and the way we engage with our customers.
            </p>
            <p>
              Our six (6) core values are integrity, service, reliability, and respect for
              people, competency and better outcome. The Kevron Code of Conduct and Code
              of Ethics help everyone at Kevron to act in line with these values and
              comply with all relevant legislation and regulations.
            </p>
            <ul class="course-accordion mt-30">
              <li class="course-accordion-list">
                <h4 class="ca-section-title">Integrity</h4>

                <div class="course-accordion-content" style="display: none">
                  <div class="course-section-content" style="padding: 10px 20px">
                    <p>
                      We believe integrity is the foundation of our individual and
                      corporate actions that drives an organization of which we are proud.
                    </p>
                    <ul class="list pb-5">
                      <li>
                        <i class="icofont-thin-double-right"></i> We are honest,
                        trustworthy and ethical in our actions
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We demonstrate
                        accountability for decisions and actions to stakeholders, guests
                        and fellow staff.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We develop and encourage
                        open and honest work practices and relationships.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We take personal
                        responsibility for actions and behaviours. Maintains
                        confidentiality and loyalty.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We deliver on actions
                        promised and honour our commitments
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We avoid conflicts of
                        interest wherever possible and if one arises we promptly take
                        appropriate steps to manage it.
                      </li>
                    </ul>
                  </div>
                </div>
              </li>

              <li class="course-accordion-list">
                <h4 class="ca-section-title">Reliability</h4>

                <div class="course-accordion-content">
                  <div class="course-section-content">
                    <p>
                      We are fully committed and dedicated to our customers. You can count
                      on us and on our products and services. With efficiency and
                      discipline, we give our best to deliver consistent top quality
                      products and services, and meet customer demands. We do what we say.
                      We fulfill expectations and keep promises.
                    </p>
                    <p>
                      The core value of the organisation lies in professional and reliable
                      staff who gives their best to provide high-quality service to meet
                      different customer needs and to ensure the group’s success. At
                      Kevron, we fulfil our promises to customers, employees and partners,
                      and keep confidential any information concerning customers, partners
                      and their companies.
                    </p>
                  </div>
                </div>
              </li>
              <li class="course-accordion-list">
                <h4 class="ca-section-title">Respect For People</h4>

                <div class="course-accordion-content">
                  <div class="course-section-content">
                    <p>
                      We acknowledge and respect differences in each other, and provide a
                      safe, supportive environment in which all individuals and staff are
                      valued, and encouraged to engage in open two-way communication.
                    </p>
                    <ul class="list pb-5">
                      <li>
                        <i class="icofont-thin-double-right"></i> We cooperate fully with
                        our customers, business partners and Professional Institutions
                        that we are member of and abide by its Charter, Byelaws and
                        Regulations.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We respect the rights
                        and privacy of other people and organisations.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> Cooperate with our
                        clients in fulfilling their legal duties under the terms of our
                        consultancy contracts.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We have due regard for
                        the effect our professional activities may have on others.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We ensure that our
                        professional and business activities are reasonable.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We respond promptly and
                        appropriately to disputes and complaints.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We treat others as we
                        would like to be treated ourselves.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We values different
                        cultures and beliefs, and show this in day-to-day words and
                        actions.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We display respect for
                        and awareness of individual differences.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We seek out, listen to,
                        and respect the ideas and opinions of others.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We engage in honest and
                        direct communication at all levels in the organisation.
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
              <li class="course-accordion-list">
                <h4 class="ca-section-title">Focused on Better Outcomes</h4>

                <div class="course-accordion-content">
                  <div class="course-section-content">
                    <p>
                      We will set the standard in service delivery, through a commitment
                      to excellence, innovation, ongoing learning and continuous
                      improvement so as to achieve better outcomes at all time.
                    </p>
                    <p class="pb-3 pr-3 pl-3">
                      We persistently apply our tried and tested systems and processes for
                      the analysis, planning and monitoring of projects, to deliver
                      faster, cheaper, safer and more efficient working practices and
                      better results overall. We transform how projects are run, safeguard
                      the interests of our clients and deliver better outcomes for them.
                    </p>
                    <ul class="list pb-5">
                      <li>
                        <i class="icofont-thin-double-right"></i> We encourage a
                        participatory work environment and committed to working with, and
                        learning from, others.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i>We remain a positive role
                        model to both our internal and external customers and stakeholders
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We adopt a positive
                        approach in change.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We are always looking
                        for ways to deliver our services better.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We accept personal
                        responsibility to drive improvements in the way things are done.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We demonstrate a
                        commitment to teamwork and sharing knowledge, resources and
                        skills.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We demonstrate
                        professionalism and we have high expectations of both own and
                        others’ performance.
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
              <li class="course-accordion-list">
                <h4 class="ca-section-title">Competence</h4>

                <div class="course-accordion-content">
                  <div class="course-section-content">
                    <p class="p-3">
                      At Kevron, we continuously improve the competencies of our workforce
                      and ensure they are competent to undertake proposed work. We
                      recognise that Competence is a combination of knowledge, skills,
                      experience, right attitude and recognition of the limits of ones
                      capabilities.
                    </p>

                    <ul class="list pb-5">
                      <li>
                        <i class="icofont-thin-double-right"></i> We ensure our staff are
                        competent to undertake proposed work
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i>We ensure persons working
                        under our authority or supervision are competent to carry out the
                        tasks assigned to them.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i>We ensure our staff
                        undertake appropriate continuing professional development and
                        record it in the manner prescribed by us.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We ensure that we make
                        our clients and others who may be affected by our activities aware
                        of our levels of competence and limits.
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
              <li class="course-accordion-list">
                <h4 class="ca-section-title">Service</h4>

                <div class="course-accordion-content">
                  <div class="course-section-content">
                    <p class="p-3">
                      At Kevron, we are proud of the services we offer and we have due
                      regard for levels of service and customer care reasonably expected
                      of us by our clients, customers, business associates and other
                      stakeholders.
                    </p>

                    <ul class="list pb-5">
                      <li>
                        <i class="icofont-thin-double-right"></i> We ensure that the terms
                        of appointment and scope of work are clearly recorded in writing.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i>We ensure that, where
                        necessary, we have adequate licensing authority or professional
                        membership to provide consultancy services in our specified areas
                        of service.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i>We carry out professional
                        work in a timely manner.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We ensure that our
                        professional advice is accurate, proportionate and communicated in
                        an appropriate format.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We have due regard for
                        levels of service and customer care reasonably expected of us.
                      </li>
                      <li>
                        <i class="icofont-thin-double-right"></i> We inform any person
                        overruling or neglecting our professional advice of the potential
                        adverse consequences and keep a written record of the date, time
                        and nature of this action.
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
            </ul>
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
  name: "core-values",
  components: { AboutMenu },
  mounted() {
    window.scrollTo(0, 0);
  },
  data() {
    return {
      values: "assets/img/core-values.jpg",
      title: "Core Values",
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
