<template>
  <div>
    <page-header></page-header>
    <page-nav active="location"></page-nav>
    <section
      class="banner"
      style="background-image: url('https://wallpaperaccess.com/full/1673470.jpg')"
    ></section>
    <!-- Page Banner -->
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-4">
          <div class="single-event-info" style="margin-top: 20px">
            <h3 class="title">Kevron Consultancy Services Nigeria</h3>
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
            <h3 class="title">Kevron Services Nigeria</h3>
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
                Kevron in Nigeria
              </li>
            </ol>
          </nav>
          <h1 class="">Kevron in Nigeria</h1>
          <h3 class="">
            Promoting Health and Safety Excellence in Nigeria's HSE Industry: Kevron
            Consulting Limited's Impact
          </h3>
          <p>
            In Nigeria, the Health, Safety, and Environment (HSE) industry plays a pivotal
            role in ensuring the well-being of workers and the protection of the
            environment across various sectors. To demonstrate commitment of workers
            health, safety and welfare, major legislation has been enacted to provide for
            the safety and health of Nigerian workforce.
          </p>
          <p>
            As an affirmation that safe working conditions are essential to attaining
            social justice and economic growth, the Federal Government of Nigeria ratified
            International Labour Organization’s ILO Convention No. 155 on Occupational
            Safety, Health, and Working Environment in 1994. According to Article 17.3.c
            of the 1999 Nigerian Constitution (as amended), the government ensures and
            protects the health, safety, and welfare of all employees. The Factory Act CAP
            FLFN (2004) and subsidiary legislations also mandates the prevention of
            industrial accidents and provision of safe working environments for workers.
          </p>
          <p>
            Since Kevron Consulting Limited establishment in 2008, the company has
            continued to stand as a prominent figure in Nigeria's HSE industry, providing
            invaluable HSE consultancy and training support to businesses across sectors
            to enhance their health, safety, and environmental practices. With its
            exceptional leadership, comprehensive services, and commitment to regulatory
            standards, Kevron Consulting Limited continues to shape the landscape of HSE
            excellence in Nigeria.
          </p>
          <h3 class="mt-4">
            Kevron Consulting Limited's Establishment in Nigeria and Accreditations
          </h3>
          <p>
            Kevron Consulting Limited has registration with key regulatory bodies and
            professional associations, solidifying its commitment to quality service
            delivery. Some of our registrations, membership and certifications include:
          </p>
          <ul>
            <li>Institution of Occupational Safety and Health (IOSH)</li>

            <li>Lagos State Safety Commission (LSSC)</li>
            <li>Nigerian Institution of Safety Engineers (NISafetyE)</li>
            <li>Institute of Safety Professionals of Nigeria (ISPON)</li>
            <li>
              Nigeria Midstream and Downstream Petroleum Regulatory Authority (NMDPRA)
            </li>
            <li>Lagos State Environmental Protection Agency (LASEPA)</li>
            <li>
              National Environmental Standards and Regulation Enforcement Agency (NESREA)
            </li>
            <li>Federal Ministry of Environment</li>
            <li>Ogun State Environmental Protection Agency (OGEPA)</li>
            <li>Oil & Gas Training Association of Nigeria (OGTAN)</li>
            <li>Emergency Care & Safety Institute (ECSI),</li>
            <li>Awarding Body of Occupational Safety and Health (ABIOSH)</li>
            <li>AOSH</li>
          </ul>
          <h3 class="mt-4">Comprehensive Services and Expert Leadership</h3>
          <p>
            Kevron Consulting Limited's success can be attributed to its dedicated team of
            experts, comprising of a Chartered Fellow Safety and Health Practitioner
            (CFIOSH), a COREN Registered Engineer, a Fellow of the Nigerian Institution of
            Safety Engineers and multidisciplinary team of Engineers, Scientists, Safety
            and Environmental Professionals. This leadership ensures that clients receive
            the highest standard of support and services.
          </p>
          <h3 class="mt-4">Service Focus in Nigeria</h3>
          <p>
            The company offers a wide range of services, including customized training
            programs and internationally recognized training courses. Its services extend
            beyond training to include Onsite HSE Support Services / Project HSE
            Management Services, which encompass HSE advisory and support services
            throughout all phases of a project – from initiation to planning, execution,
            monitoring, controlling, and closing.
          </p>
          <p>
            We are not only dedicated to compliance but also to fostering a culture of
            safety, efficiency, and excellence within organizations. We assist our clients
            in devising strategies that enhance operational effectiveness, manage risks,
            and maintain a safe and healthy working environment. Our approach covers the
            entire project lifecycle and network of business entities, ensuring that
            efficiencies are maximized, compliance is maintained, and costs are reduced.
          </p>
          <ul class="course-accordion mt-30">
            <li class="course-accordion-list">
              <h4 class="ca-section-title">Lagos</h4>

              <div class="course-accordion-content" style="display: none">
                <div class="course-section-content">
                  <div class="row p-4">
                    <div class="col-lg-4">
                      <h5 class="primary-color" style="font-size: 16px">Director</h5>
                      <p>Engr. Kayode V. Fowode CFIOSH, FNSE, FNISafetyE</p>
                      <p>info@kevrongroup.com</p>
                    </div>
                    <div class="col-lg-4">
                      <h5 class="primary-color" style="font-size: 16px">Address</h5>
                      <address>
                        4C Akinola Cole Crescent,<br />
                        Adeniyi Jones, Ikeja, Lagos
                      </address>
                    </div>
                    <div class="col-lg-4">
                      <h5 class="primary-color" style="font-size: 16px">Telephone</h5>
                      <p>
                        +234 201 342 4578, <br />
                        +234 706 392 1439, <br />
                        +234 908 890 8891, <br />
                        +234 708 653 8967, <br />
                        +234 803 976 4250
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </li>

            <li class="course-accordion-list">
              <h4 class="ca-section-title">Port Harcourt</h4>

              <div class="course-accordion-content">
                <div class="course-section-content">
                  <div class="row p-4">
                    <div class="col-lg-4">
                      <h5 class="primary-color" style="font-size: 16px">Director</h5>
                      <p>Yemi Awode</p>
                      <p>info@kevrongroup.com</p>
                    </div>
                    <div class="col-lg-4">
                      <h5 class="primary-color" style="font-size: 16px">Address</h5>
                      <address>
                        32 Wopara Street, <br />
                        Rumuobiakani, Port Harcourt, <br />
                        Rivers State
                      </address>
                    </div>
                    <div class="col-lg-4">
                      <h5 class="primary-color" style="font-size: 16px">Telephone</h5>
                      <p>
                        +234 201 342 4578, <br />
                        +234 706 392 1439, <br />
                        +234 908 890 8891, <br />
                        +234 708 653 8967, <br />
                        +234 803 976 4250
                      </p>
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
