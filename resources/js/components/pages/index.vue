<template>
  <div>
    <!-- header component -->
    <page-header></page-header>
    <!-- nav component -->
    <page-nav active="home"></page-nav>
    <!-- Hero Slider -->

    <div class="hero-slider owl-carousel owl-theme owl-theme-1">
      <div class="hero-slider-item item-bg-2">
        <div class="d-table">
          <div class="d-tablecell">
            <div class="hero-slider-text hst-text-center">
              <!-- <span class="welcome-text">We Provide</span> -->
              <h1>Health and Safety Support Services / Onsite HSE Management</h1>
              <p>
                We support businesses to meet their health and safety obligations and
                provide onsite project safety management services.
              </p>
              <div class="slider-btn">
                <router-link
                  :to="{ name: 'project-safety' }"
                  class="default-btn white-btn mr-15"
                >
                  Learn More
                </router-link>
                <router-link :to="{ name: 'contact' }" class="default-btn pink-bg">
                  Contact Us
                </router-link>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="hero-slider-item item-bg-3">
        <div class="d-table">
          <div class="d-tablecell">
            <div class="hero-slider-text">
              <!-- <span class="welcome-text">We Provide</span> -->
              <h1>Health &amp; Safety Training Courses</h1>
              <p>
                We offer a wide range of training and qualifications in health, safety and
                environmental management – IOSH, OTHM, AOSH, Customised Courses etc.
              </p>
              <div class="slider-btn">
                <a href="#" class="default-btn white-btn mr-15"> Learn More </a>
                <router-link :to="{ name: 'contact' }" class="default-btn pink-bg">
                  Contact Us
                </router-link>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="hero-slider-item item-bg-4">
        <div class="d-table">
          <div class="d-tablecell">
            <div class="hero-slider-text">
              <!-- <span class="welcome-text">We Provide</span> -->
              <h1>Environmental Management &amp; Sustainability</h1>
              <p>
                No matter the nature of your business - be it a multinational corporation,
                a small business, or a non-profit organization - we are equipped to offer
                you the necessary tools, knowledge, and guidance to effectively enhance
                your environmental performance.
              </p>
              <div class="slider-btn">
                <router-link
                  :to="{ name: 'environmental-mgt' }"
                  class="default-btn white-btn mr-15"
                >
                  Learn More
                </router-link>
                <router-link :to="{ name: 'contact' }" class="default-btn pink-bg">
                  Contact Us
                </router-link>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="hero-slider-item item-bg-5">
        <div class="d-table">
          <div class="d-tablecell">
            <div class="hero-slider-text">
              <!-- <span class="welcome-text">We Provide</span> -->
              <h1>
                Technical Safety Studies – HAZOP, HAZID, BOWTIE, Explosion Protection
                Design, Process Safety Audit
              </h1>
              <p>
                We are a leading provider of specialized technical safety studies for the
                process, chemical, oil & gas and FMCG industry. We employ leading-edge
                methodologies and advanced tools to conduct thorough safety studies,
                identifying potential hazards and assessing risks at every stage of your
                operations.
              </p>
              <div class="slider-btn">
                <router-link
                  :to="{ name: 'technical-safety-studies' }"
                  class="default-btn white-btn mr-15"
                >
                  Learn More
                </router-link>
                <router-link :to="{ name: 'contact' }" class="default-btn pink-bg">
                  Contact Us
                </router-link>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="hero-slider-item item-bg-1">
        <div class="d-table">
          <div class="d-tablecell">
            <div class="hero-slider-text">
              <!-- <span class="welcome-text">We Provide</span> -->
              <h1>Manpower Recruitment &amp; Outsourcing</h1>
              <p>
                Short-term or long-term recruitment need for Project and HSE personnel
                (HSE Officers, Advisors, HSE Managers, Project Manager etc) on projects
                and business operational support. We also recruit Carers and Support
                Workers for health and social care providers.
              </p>
              <div class="slider-btn">
                <router-link
                  :to="{ name: 'manpower-recruitment' }"
                  class="default-btn white-btn mr-15"
                >
                  Learn More
                </router-link>
                <router-link :to="{ name: 'contact' }" class="default-btn pink-bg">
                  Contact Us
                </router-link>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- End Hero Slider -->
    <!-- About Us -->
    <section class="about-us-area pt-50 pb-50">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-lg-8">
            <div class="about-us-text text-center">
              <h6 class="text-uppercase">Kevron Group</h6>
              <h2 class="garamond">
                Over a Decade Experience in QHSSE Consultancy &amp; Trainings
              </h2>

              <p class="text-black text-xs">
                We are a leading provider of health, safety, and environmental (HSE)
                services, registered in United Kingdom (UK), Nigeria and South Africa.
                Kevron Consulting also has strong presence in Ghana, and we will be glad
                to extend our HSE services to you wherever you are globally.
              </p>
              <router-link :to="{ name: 'about-page' }" class="book-now-btn mt-4"
                >About Us</router-link
              >
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End About Us -->

    <!-- Popular services -->
    <section class="popular-courses pt-50 pb-50">
      <div class="container">
        <div class="section-header">
          <i class="icofont-safety-hat"></i>
          <h2>Our QHSSE Services &amp; Consultancy</h2>
        </div>
        <div class="popular-course-carosel owl-carousel owl-theme owl-theme-s2">
          <!-- Service #1 -->
          <div class="single-course">
            <router-link :to="{ name: 'project-safety' }" class="thumb-img">
              <span class="overly"></span>
              <img src="assets/img/services/project-safety.jpg" alt="Course Image" />
            </router-link>
            <div class="course-caption">
              <h5>
                <router-link :to="{ name: 'project-safety' }" class="text-black"
                  >Onsite HSE Management / Project Safety Management</router-link
                >
              </h5>
              <p class="text-xs">
                Our Project Safety Management services enable us provide QHSSE advisory
                services and support
              </p>
              <router-link :to="{ name: 'project-safety' }" class="book-now-btn"
                >Read More</router-link
              >
            </div>
          </div>
          <div class="single-course">
            <router-link :to="{ name: 'management-system' }" class="thumb-img">
              <span class="overly"></span>
              <img src="assets/img/services/iso-9001.jpg" alt="Course Image" />
            </router-link>
            <div class="course-caption">
              <h5>
                <router-link :to="{ name: 'management-system' }" class="text-black"
                  >Management System Implementation / ISO Certification</router-link
                >
              </h5>
              <p>
                We have helped organizations of all sizes in acquiring the ISO
                Certification. We have great
              </p>
              <router-link :to="{ name: 'management-system' }" class="book-now-btn"
                >Read More</router-link
              >
            </div>
          </div>
          <div class="single-course">
            <router-link :to="{ name: 'manpower-recruitment' }" class="thumb-img">
              <span class="overly"></span>
              <img src="assets/img/services/manpower.jpg" alt="Course Image" />
            </router-link>
            <div class="course-caption">
              <h5>
                <router-link :to="{ name: 'manpower-recruitment' }" class="text-black"
                  >HSE Manpower Supply & Recruitment</router-link
                >
              </h5>
              <p>
                We provide QHSSE Professionals to support your project and offer QHSSE
                advisory services for
              </p>
              <router-link :to="{ name: 'manpower-recruitment' }" class="book-now-btn"
                >Read More</router-link
              >
            </div>
          </div>

          <div class="single-course">
            <router-link :to="{ name: 'asset-safety' }" class="thumb-img">
              <span class="overly"></span>
              <img src="assets/img/services/asset-safety.jpg" alt="Course Image" />
            </router-link>
            <div class="course-caption">
              <h5>
                <router-link :to="{ name: 'asset-safety' }" class="text-black"
                  >Asset Safety Management</router-link
                >
              </h5>
              <p>
                We support the implementation of safety management systems to operate and
                maintain
              </p>
              <router-link :to="{ name: 'asset-safety' }" class="book-now-btn"
                >Read More</router-link
              >
            </div>
          </div>
          <div class="single-course">
            <router-link :to="{ name: 'strategic-safety' }" class="thumb-img">
              <span class="overly"></span>
              <img src="assets/img/services/safety-management.jpg" alt="Course Image" />
            </router-link>
            <div class="course-caption">
              <h5>
                <router-link :to="{ name: 'strategic-safety' }" class="text-black"
                  >Strategic Safety Management</router-link
                >
              </h5>
              <p>
                Our strategic safety management service provides high level QHSSE advice
                to clients in
              </p>
              <router-link :to="{ name: 'strategic-safety' }" class="book-now-btn"
                >Read More</router-link
              >
            </div>
          </div>
          <div class="single-course">
            <router-link :to="{ name: 'environmental-mgt' }" class="thumb-img">
              <span class="overly"></span>
              <img src="assets/img/services/environment.jpg" alt="Course Image" />
            </router-link>
            <div class="course-caption">
              <h5>
                <router-link :to="{ name: 'environmental-mgt' }" class="text-black"
                  >Environmental Management &amp; Sustainability</router-link
                >
              </h5>
              <p>
                Current and emerging business realities place increasing demands on
                organisations for the
              </p>
              <router-link :to="{ name: 'environmental-mgt' }" class="book-now-btn"
                >Read More</router-link
              >
            </div>
          </div>
          <div class="single-course">
            <router-link :to="{ name: 'qhsse-documentation' }" class="thumb-img">
              <span class="overly"></span>
              <img src="assets/img/services/documentation.jpg" alt="Course Image" />
            </router-link>
            <div class="course-caption">
              <h5>
                <router-link :to="{ name: 'qhsse-documentation' }" class="text-black"
                  >QHSSE Documentation</router-link
                >
              </h5>
              <p>
                The law requires all employers to ensure the health, safety and welfare of
                their employees
              </p>
              <router-link :to="{ name: 'qhsse-documentation' }" class="book-now-btn"
                >Read More</router-link
              >
            </div>
          </div>
          <!-- Service #8 -->
          <div class="single-course">
            <router-link :to="{ name: 'publication' }" class="thumb-img">
              <span class="overly"></span>
              <img src="assets/img/services/publication.jpg" alt="Course Image" />
            </router-link>
            <div class="course-caption">
              <h5>
                <router-link :to="{ name: 'publication' }" class="text-black"
                  >Research &amp; Publication</router-link
                >
              </h5>
              <p>
                Kevron Group Consultants are seasoned researchers who are passionate about
                HSE
              </p>
              <router-link :to="{ name: 'publication' }" class="book-now-btn"
                >Read More</router-link
              >
            </div>
          </div>

          <div class="single-course">
            <router-link :to="{ name: 'floor-markings' }" class="thumb-img">
              <span class="overly"></span>
              <img src="assets/img/services/floor-markings.jpg" alt="Course Image" />
            </router-link>
            <div class="course-caption">
              <h5 class="text-black">
                <router-link :to="{ name: 'floor-markings' }" class="text-black"
                  >Floor Markings &amp; Signage</router-link
                >
              </h5>
              <p>
                We can give your factory the look you never imagine and making it safer
                and eliminate or
              </p>
              <router-link :to="{ name: 'floor-markings' }" class="book-now-btn"
                >Read More</router-link
              >
            </div>
          </div>
          <!-- Service #2 -->

          <!-- Service #2 -->
          <div class="single-course">
            <router-link :to="{ name: 'procurement' }" class="thumb-img">
              <span class="overly"></span>
              <img src="assets/img/services/procurement.jpg" alt="Course Image" />
            </router-link>
            <div class="course-caption">
              <h5>
                <router-link :to="{ name: 'procurement' }" class="text-black"
                  >Procurement</router-link
                >
              </h5>
              <p>
                Kevron supplies quality and affordable Personal Protective Equipment (PPE)
                essential for the
              </p>
              <router-link :to="{ name: 'procurement' }" class="book-now-btn"
                >Read More</router-link
              >
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Popular courses -->

    <!-- Upcoming Courses -->
    <section class="events-area pt-50 pb-50">
      <div class="container">
        <div class="section-header">
          <i class="icofont-education"></i>
          <h2>QHSSE Courses</h2>
        </div>
        <div
          class="popular-course-carosel owl-carousel owl-theme owl-theme-s2 owl-loaded"
        >
          <div class="single-course" v-for="(cat, index) in categories" :key="index">
            <a :href="'/courses/' + cat.slug" class="thumb-img">
              <span class="overly"></span>
              <img :src="cat.image" alt="Course Image" />
            </a>
            <div class="course-caption">
              <h5>
                <a :href="'/courses/' + cat.slug" class="text-black">{{ cat.title }}</a>
              </h5>
              <p>
                {{ cat.description }}
              </p>
              <a :href="'/courses/' + cat.slug" class="book-now-btn">Read More</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Upcoming Courses -->

    <!-- End Latest News -->
    <page-footer></page-footer>
    <section class="container cookie" v-if="!policy">
      <div class="row items-center">
        <div class="col-lg-10">
          <div class="txt">
            <p>
              We use necessary cookies for site functionality. We’d also like to set
              optional cookies to improve your experience of our site, collect information
              on how you use it, improve it to meet your needs and support the marketing
              of our services. You can either accept all cookies or choose which ones
              you’re happy for us to use.
            </p>
          </div>
        </div>
        <div class="col-lg-2">
          <button @click="setPolicy" class="btn accept">Accept</button>
        </div>
      </div>
    </section>
  </div>
</template>
<script>
import carousel from "vue-owl-carousel";
export default {
  name: "index",
  components: { carousel },
  metaInfo: {
    title: "QHSSE Consultancy, QHSSE Services & QHSSE Trainings",
    meta: [
      {
        name: "description",
        content:
          "Kevron Group is a Quality, Health, Safety, Security Environmental (QHSSE) consultancy and Training Company offering services to clients anywhere in the world covering: Strategic Safety Management, Asset Safety Management, Project Safety Management, Research and Publications, Manpower Recruitment, Security Services, Procurement and QHSSE Training.",
      },
      {
        name: "keywords",
        content:
          "health and safety, safety consultancy, project safety management, qhsse services, qhsse consultancy, iso, iso certificaion, floor markings and signage, manpower recruitment, manpower outsourcing, qhsse, quality, health, safety, security, environment",
      },
    ],
  },
  data() {
    return {
      title: "QHSSE Consultancy, QHSSE Services & QHSSE Trainings",
      courses: {},
      policy: false,
      categories: [
        {
          title: "AOSH Courses",
          slug: "aosh-courses",
          image: "assets/img/course_category/health-and-safety.jpg",
          description: "Courses on First Aid, Health & Safety, Fire Safety, Food Safety",
        },
        {
          title: "ABIOSH Accredited Courses",
          slug: "abiosh-accredited-courses",
          image: "assets/img/course_category/abiosh.jpg",
          description:
            "Courses on ABIOSH International Certificate in Occupational Health and",
        },
        {
          title: "IOSH Courses",
          slug: "iosh-courses",
          image: "assets/img/course_category/project-safety-management.jpg",
          description: "Courses on IOSH Working Safely, IOSH Managing Safely",
        },
        {
          title: "ISO Lead Auditor Courses",
          slug: "iso-lead-auditor-courses",
          image: "assets/img/course_category/iso.jpg",
          description:
            "Courses on QMS Auditor/Lead Auditor ( ISO 9001:2015 CQI & IRCA),OH&S MS Auditor/Lead",
        },
        {
          title: "Specialized HSE Training Courses",
          slug: "specialized-hse-training-courses",
          image: "assets/img/course_category/hse.jpg",
          description:
            "Courses on Behavioural Based Safety and Leadership, Design Risk Management and",
        },
        {
          title: "Software Training Courses",
          slug: "software-training-courses",
          image: "assets/img/course_category/software-training.jpg",
          description:
            "Courses on Advanced Excel, Advanced PowerPoint, Best Practice in Building Operations Maintenance",
        },
        {
          title: "Technical Training Courses",
          slug: "technical-training-courses",
          image: "assets/img/course_category/technical.jpg",
          description:
            "Courses on Advanced Excel, Advanced PowerPoint, Best Practice in Building Operations Maintenance",
        },
      ],
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
          "health and safety, safety consultancy, project safety management, qhsse services, qhsse consultancy, iso, iso certificaion, floor markings and signage, manpower recruitment, manpower outsourcing, qhsse, quality, health, safety, security, environment",
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
      {
        name: "subject",
        content: "QHSSE Consultancy, QHSSE Services &amp; QHSSE Trainings",
      },
      { name: "directory", content: "submission" },
      { name: "category", content: "business" },
      { name: "coverage", content: "Worldwide" },
      { name: "distribution", content: "Global" },
      { name: "rating", content: "General" },
      { name: "revisit-after", content: "7 days" },
      {
        name: "og:title",
        content: "QHSSE Consultancy, QHSSE Services & QHSSE Trainings",
      },
      { name: "og:type", content: "website" },
      { name: "og:image", content: "" },
      { name: "og:site_name", content: "Kevron Group" },
      {
        name: "og:description",
        content:
          "Kevron Group is a Quality, Health, Safety, Security Environmental (QHSSE) consultancy and Training Company offering services to clients anywhere in the world covering: Strategic Safety Management, Asset Safety Management, Project Safety Management, Research and Publications, Manpower Recruitment, Security Services, Procurement and QHSSE Training.",
      },
      { name: "og:phone_number", content: "+234-13-424-578" },
      { name: "og:email", content: "info@kevrongroup.com" },
    ],
  },
  created() {
    this.getCourseCategories();
    this.getPolicy();
  },
  methods: {
    getCourseCategories() {
      axios
        .get("/api/course-categories/")
        .then(({ data }) => (this.courses = data))
        .catch();
    },
    setPolicy() {
      axios
        .get("/api/set-policy")
        .then(() => {
          this.getPolicy();
        })
        .catch();
    },
    getPolicy() {
      axios
        .get("/api/policy")
        .then((res) => (this.policy = res.data))
        .catch();
    },
  },
};
</script>
