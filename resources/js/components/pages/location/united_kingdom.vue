<template>
  <div>
    <page-header></page-header>
    <page-nav active="location"></page-nav>
    <section
      class="banner"
      style="background-image: url('https://wallpapercave.com/wp/wp2244522.jpg')"
    ></section>
    <!-- Page Banner -->
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-4">
          <div class="single-event-info" style="margin-top: 20px">
            <h3 class="title">Kevron Consultancy Services United Kingdom</h3>
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
            <h3 class="title">Kevron Services United Kingdom</h3>
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
              <li class="breadcrumb-item active" aria-current="page">
                Kevron in United Kingdom
              </li>
            </ol>
          </nav>
          <h1 class="">Kevron in United Kingdom</h1>
          <h3 class="">Enhancing Health and Safety in the UK</h3>
          <p>
            We are registered in the UK as KEVRON Consulting UK Limited to providing
            comprehensive health and safety solutions to businesses across the United
            Kingdom. With an emphasis on compliance, collaboration, risk mitigation, and
            employee well-being, KEVRON has established itself as a trusted partner for
            organizations seeking to create safer work environments while adhering to
            stringent regulatory requirements.
          </p>
          <h3 class="mt-4">Health and Safety Sector in the UK</h3>
          <p>
            The health and safety sector in the UK holds significant importance due to its
            role in protecting workers’ rights, reducing accidents and injuries, and
            maintaining a productive and secure workforce. The UK government has
            implemented a robust framework of regulations and guidelines to ensure that
            businesses prioritize health and safety concerns. Non-compliance can lead to
            severe penalties, reputation damage, and, most importantly, compromised
            employee safety.
          </p>
          <h3 class="mt-4">Why Choose KEVRON Consulting</h3>
          <p>
            We offer a range of services that can greatly benefit businesses operating in
            the UK. Our team comprises seasoned professionals with a deep understanding of
            UK health and safety regulations. Our extensive experience allows us to tailor
            solutions to the specific needs of each client, ensuring compliance and
            minimizing risks effectively.
          </p>
          <p>
            Our team of HSE experts is led by a Chartered Safety and Health Practitioner
            (CFIOSH).As such, our clients are confident of receiving the highest possible
            standard of support and service.
          </p>
          <p>
            In the dynamic landscape of the UK health and safety sector, KEVRON Consulting
            UK Limited stands out as a valuable partner for businesses looking to enhance
            their safety practices, ensure compliance, and prioritize the well-being of
            their workforce. Through our expert guidance, tailored solutions, and
            commitment to continuous improvement, KEVRON empowers businesses to create
            safer and more productive work environments while navigating the complexities
            of health and safety regulations in the UK.
          </p>

          <ul class="course-accordion mt-30">
            <li class="course-accordion-list">
              <h4 class="ca-section-title">United Kingdom</h4>

              <div class="course-accordion-content" style="display: none">
                <div class="course-section-content">
                  <div class="row p-4">
                    <div class="col-lg-4">
                      <h5 class="primary-color" style="font-size: 16px">Director</h5>
                      <p>Engr. Kayode Fowode CFIOSH, FNSE, FNISafetyE</p>
                      <p>k.fowode@kevrongroup.com</p>
                    </div>
                    <div class="col-lg-4">
                      <h5 class="primary-color" style="font-size: 16px">Address</h5>
                      <address>
                        17 Washington Close, <br />
                        Ipswich, Suffolk, <br />
                        IP2 8FT
                      </address>
                    </div>
                    <div class="col-lg-4">
                      <h5 class="primary-color" style="font-size: 16px">Telephone</h5>
                      <p>+447473274822</p>
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
