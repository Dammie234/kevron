<template>
  <div>
    <page-header></page-header>
    <page-nav active="location"></page-nav>
    <section
      class="banner"
      style="
        background-image: url('https://media.cntraveler.com/photos/5b742b191f8f5f5aacc37829/16:9/w_2560,c_limit/Table-Mountain_GettyImages-103891332.jpg');
      "
    ></section>
    <!-- Page Banner -->
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-4">
          <div class="single-event-info" style="margin-top: 20px">
            <h3 class="title">Kevron Consultancy Services South Africa</h3>
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
            <h3 class="title">Kevron Services South Africa</h3>
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
                Kevron in South Africa
              </li>
            </ol>
          </nav>
          <h1 class="">Kevron in South Africa</h1>
          <h3 class="">Promoting Health and Safety Performance in South Africa</h3>
          <p>
            In South Africa, the Health, Safety, and Environment (HSE) industry plays a
            vital role in ensuring the well-being of workers, the preservation of the
            environment, and the sustainability of businesses. As the nation strives to
            maintain high standards of health and safety across various sectors, companies
            are increasingly turning to expert consultancy services like Kevron Group to
            navigate the complex landscape of regulations, compliance, and best practices.
          </p>
          <h3 class="mt-4">Kevron Group</h3>
          <p>
            Kevron Consulting operates under the registered entity name KEVRON Group in
            South Africa. Kevron Group has established itself as a trusted partner for
            businesses seeking to enhance their health and safety performance while
            adhering to industry regulations.
          </p>
          <p>
            Kevron Group offers a comprehensive suite of HSE consultancy and training
            services designed to cater to the diverse needs of businesses across various
            sectors. Our team of experienced professionals combines extensive industry
            knowledge with a deep understanding of local regulations to provide tailored
            solutions that address both immediate challenges and long-term goals.
          </p>
          <h3 class="mt-4">Reaching Out to Kevron Consulting Limited</h3>
          <p>
            Businesses looking to elevate their health and safety performance can easily
            connect with Kevron Group for our expert consultancy services. By reaching out
            to our team, businesses can initiate a partnership that not only enhances
            their operations but also contributes to the broader goal of creating a safer,
            healthier, and more sustainable business landscape in South Africa.
          </p>
          <p>
            As South Africa continues its journey towards better health, safety, and
            environmental standards, Kevron Group stands as a beacon of support, aiding
            businesses in their efforts to navigate the intricate world of HSE regulations
            and practices.
          </p>

          <p>
            For inquiries and consultations, businesses can reach out to Kevron Group via
            their official contact channels, fostering a collaboration that fosters safer
            workplaces and responsible business practices.
          </p>

          <ul class="course-accordion mt-30">
            <li class="course-accordion-list">
              <h4 class="ca-section-title">South Africa</h4>

              <div class="course-accordion-content" style="display: none">
                <div class="course-section-content">
                  <div class="row p-4">
                    <div class="col-lg-4">
                      <h5 class="primary-color" style="font-size: 16px">Director</h5>
                      <p>Cyril Ererobe</p>
                      <p>e.ajiri@kevrongroup.com</p>
                    </div>
                    <div class="col-lg-4">
                      <h5 class="primary-color" style="font-size: 16px">Address</h5>
                      <address>
                        18 Setter Street, <br />
                        Honeydew, <br />
                        Guateng, 2170
                      </address>
                    </div>
                    <div class="col-lg-4">
                      <h5 class="primary-color" style="font-size: 16px">Telephone</h5>
                      <p>+27784146411</p>
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
