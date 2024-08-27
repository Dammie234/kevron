<template>
  <div>
    <page-header></page-header>
    <page-nav active="location"></page-nav>
    <section
      class="banner"
      style="background-image: url('https://wallpapercave.com/wp/wp9649526.jpg')"
    ></section>
    <!-- Page Banner -->
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-4">
          <div class="single-event-info" style="margin-top: 20px">
            <h3 class="title">Kevron Consultancy Services Ghana</h3>
            <ul class="quick-menu">
              <li>
                <router-link
                  :to="{ name: 'project-safety' }"
                  :class="active && active == 'project-safety' ? 'current' : ''"
                >
                  Onsite HSE Management / Project Safety Management</router-link
                >
              </li>

              <li>
                <router-link
                  :to="{ name: 'management-system' }"
                  :class="active && active == 'management-system' ? 'current' : ''"
                >
                  Management System Implementation / ISO Certification</router-link
                >
              </li>
              <li>
                <router-link
                  :to="{ name: 'asset-safety' }"
                  :class="active && active == 'asset-safety' ? 'current' : ''"
                >
                  Asset Safety Management</router-link
                >
              </li>
              <li>
                <router-link
                  :to="{ name: 'strategic-safety' }"
                  :class="active && active == 'strategic-safety' ? 'current' : ''"
                >
                  Strategic Safety Management</router-link
                >
              </li>
              <li>
                <router-link
                  :to="{ name: 'qhsse-documentation' }"
                  :class="active && active == 'qhsse-documentation' ? 'current' : ''"
                >
                  QHSSE Documentation</router-link
                >
              </li>
              <li>
                <router-link
                  :to="{ name: 'publication' }"
                  :class="active && active == 'publication' ? 'current' : ''"
                >
                  Research and Publication</router-link
                >
              </li>
            </ul>
          </div>
          <div class="single-event-info" style="margin-top: 80px">
            <h3 class="title">Kevron Services Ghana</h3>
            <ul class="quick-menu">
              <li>
                <router-link
                  :to="{ name: 'manpower-recruitment' }"
                  :class="active && active == 'manpower-recruitment' ? 'current' : ''"
                  >HSE Manpower Supply &amp; Recruitment</router-link
                >
              </li>

              <li>
                <router-link
                  :to="{ name: 'hse-courses' }"
                  :class="active && active == 'hse-courses' ? 'current' : ''"
                  >HSE Training Courses</router-link
                >
              </li>
              <li>
                <router-link
                  :to="{ name: 'environmental-mgt' }"
                  :class="active && active == 'environmental-mgt' ? 'current' : ''"
                  >Environmental Management &amp; Sustainability</router-link
                >
              </li>
              <li>
                <a
                  href="/services/technical-safety-studies"
                  :class="active && active == 'technical-safety-studies' ? 'current' : ''"
                  >Technical Safety Studies / Process Safety Engineering</a
                >
              </li>

              <li>
                <router-link
                  :to="{ name: 'floor-markings' }"
                  :class="active && active == 'floor-markings' ? 'current' : ''"
                  >Floor Markings &amp; Signage</router-link
                >
              </li>

              <li>
                <router-link
                  :to="{ name: 'procurement' }"
                  :class="active && active == 'procurement' ? 'current' : ''"
                  >Procurement</router-link
                >
              </li>
            </ul>
          </div>
        </div>
        <div class="col-lg-8 my-3">
          <nav aria-label="breadcrumb mt-5">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Kevron in Ghana</li>
            </ol>
          </nav>
          <h1 class="">Kevron in Ghana</h1>
          <h3 class="">Enhancing Health and Safety in Businesses</h3>
          <p>
            Kevron Group through our in-country representative has emerged as a prominent
            player in Ghana. The company's commitment to ensuring the well-being of
            workers and the operational integrity of businesses has positioned it as a
            valuable partner in the Ghanaian business landscape.
          </p>
          <h3 class="mt-4">Health and Safety Landscape in Ghana</h3>
          <p>
            Ghana, like many other countries, places significant emphasis on maintaining a
            safe and healthy working environment for employees. The government has
            implemented regulations and standards that businesses are expected to adhere
            to, ensuring the protection of workers and the prevention of accidents and
            occupational hazards. The health and safety sector in Ghana encompasses a wide
            range of industries, including manufacturing, construction, mining,
            agriculture, and more.
          </p>
          <h3 class="mt-4">The Role of Kevron Group</h3>
          <p>
            Kevron Group has established itself as a reputable consulting firm
            specializing in health, safety, environment, and risk management. With a
            presence in Ghana via in-country representative, Kevron offers a range of
            services designed to assist businesses in achieving compliance with local
            regulations, international standards, and best practices in HSE. The company's
            expertise extends across various sectors, making its services relevant to
            diverse industries.
          </p>
          <h3 class="mt-4">
            Onsite HSE Management Services / Outsourcing of HSE Personnel on Project in
            Accra
          </h3>
          <p>
            Kevron Group offers onsite HSE management on construction projects and
            outsourced HSE personnel on projects. We also deliver customised and
            certification training for businesses.
          </p>
          <p>
            Our current project involves the onsite HSE support services for a Data Centre
            Construction project in the heart of Ghana's capital city, Accra.
          </p>

          <p>
            Kevron Group presence in Ghana signifies a pivotal partnership between expert
            consulting services and the evolving health and safety landscape in the
            country. By offering tailored solutions, promoting compliance, and
            prioritizing employee well-being, Kevron contributes significantly to the
            growth and success of businesses in various industries. Its onsite projects,
            like the one in Accra, demonstrate the tangible impact of its services on the
            ground, ensuring that workplaces become safer, more efficient, and conducive
            to growth in the long term.
          </p>

          <ul class="course-accordion mt-30">
            <li class="course-accordion-list">
              <h4 class="ca-section-title">Ghana</h4>

              <div class="course-accordion-content" style="display: none">
                <div class="course-section-content">
                  <div class="row p-4">
                    <div class="col-lg-5">
                      <h5 class="primary-color" style="font-size: 16px">Director</h5>
                      <p>Nicholas Okorie</p>
                      <p>projectghana@kevrongroup.com</p>
                    </div>
                    <div class="col-lg-7">
                      <h5 class="primary-color" style="font-size: 16px">Address</h5>
                      <address>
                        5 Suhum Street, <br />
                        Kokomlemle, <br />
                        Accra
                      </address>
                    </div>
                  </div>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- End Page Banner -->

    <page-footer></page-footer>
  </div>
</template>
<script>
export default {
  name: "contact",
};
</script>
