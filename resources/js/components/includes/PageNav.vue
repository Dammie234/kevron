<template>
  <div>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light edu-navbar header-sticky">
      <div class="container">
        <a class="navbar-brand" href="/">
          <img :src="'../../../' + logo" alt="Logo" />
        </a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item" :class="active == 'home' ? 'active' : ''">
              <a class="nav-link" href="/"> Home </a>
            </li>

            <li class="nav-item dropdown" :class="active == 'about' ? 'active' : ''">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdownAbout"
                role="button"
                data-bs-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                About Us
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdownAbout">
                <li>
                  <a class="dropdown-item" href="/about/about-kevron-group"
                    >About Kevron Group</a
                  >
                </li>
                <li>
                  <a class="dropdown-item" href="/about/core-values"
                    >Kevron Core Values</a
                  >
                </li>
                <li>
                  <a class="dropdown-item" href="/locations">Our Offices</a>
                </li>
              </ul>
            </li>

            <li class="nav-item dropdown" :class="active == 'service' ? 'active' : ''">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdownPages"
                role="button"
                data-bs-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                Services
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdownPages">
                <li>
                  <a class="dropdown-item" href="/services/consultancy">Consultancy</a>
                </li>

                <li>
                  <a
                    class="dropdown-item"
                    href="/services/hse-manpower-supply-and-recruitment"
                    >HSE Manpower Supply &amp; Recruitment</a
                  >
                </li>
                <li>
                  <a class="dropdown-item" href="/services/hse-training-courses"
                    >HSE Training Courses</a
                  >
                </li>
                <li>
                  <a
                    class="dropdown-item"
                    href="/services/environmental-management-and-sustainability"
                    >Environmental Management &amp; Sustainability</a
                  >
                </li>
                <li>
                  <a class="dropdown-item" href="/services/technical-safety-studies"
                    >Technical Safety Studies / Process Safety Engineering</a
                  >
                </li>

                <li>
                  <a class="dropdown-item" href="/services/floor-markings-and-signage"
                    >Floor Markings &amp; Signage</a
                  >
                </li>
                <li>
                  <a class="dropdown-item" href="/services/procurement">Procurement</a>
                </li>
              </ul>
            </li>

            <li
              class="nav-item dropdown"
              :class="active == 'consultancy' ? 'active' : ''"
            >
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdownEvent"
                role="button"
                data-bs-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                Consultancy
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdownEvent">
                <li>
                  <a class="dropdown-item" href="/consultancy/onsite-hse-management">
                    Onsite HSE Management / Project Safety Management
                  </a>
                </li>

                <li>
                  <a
                    class="dropdown-item"
                    href="/consultancy/management-system-implementation-iso-certification"
                    >Management System Implementation / ISO Certification</a
                  >
                </li>
                <li>
                  <a class="dropdown-item" href="/consultancy/asset-safety-management"
                    >Asset Safety Management</a
                  >
                </li>
                <li>
                  <a class="dropdown-item" href="/consultancy/strategic-safety-management"
                    >Strategic Safety Management
                  </a>
                </li>
                <li>
                  <a class="dropdown-item" href="/consultancy/qhsse-documentation"
                    >QHSSE Documentation</a
                  >
                </li>
                <li>
                  <a class="dropdown-item" href="/consultancy/research-and-publication"
                    >Research and Publication</a
                  >
                </li>
              </ul>
            </li>

            <li class="nav-item dropdown" :class="active == 'courses' ? 'active' : ''">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdownEvent"
                role="button"
                data-bs-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                Courses
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdownEvent">
                <li v-for="cat in categories" :key="cat.id">
                  <a class="dropdown-item" :href="'/courses/' + cat.slug"
                    >{{ cat.title }}
                  </a>
                </li>
              </ul>
            </li>

            <li class="nav-item" :class="active == 'projects' ? 'active' : ''">
              <a class="nav-link" href="/projects"> Projects </a>
            </li>

            <li class="nav-item dropdown" :class="active == 'location' ? 'active' : ''">
              <a
                class="nav-link dropdown-toggle"
                href="/locations"
                id="navbarDropdownPages"
                role="button"
                data-bs-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                Locations
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdownPages">
                <li>
                  <a class="dropdown-item" href="/locations/nigeria"> Nigeria</a>
                </li>
                <li>
                  <a class="dropdown-item" href="/locations/ghana"> Ghana</a>
                </li>
                <li>
                  <a class="dropdown-item" href="/locations/south-africa">
                    South Africa</a
                  >
                </li>
                <li>
                  <a class="dropdown-item" href="/locations/united-kingdom">
                    United Kingdom</a
                  >
                </li>
              </ul>
            </li>
            <li class="nav-item" :class="active == 'projects' ? 'active' : ''">
              <a class="nav-link" href="/contact"> Contact </a>
            </li>

            <li class="nav-item" :class="active == 'scholarship' ? 'active' : ''">
              <a class="nav-link" href="/kevron-2024-scholarship"> Scholarship </a>
            </li>
          </ul>
        </div>
        <img :src="'../../../' + iosh" alt="" />
      </div>
    </nav>
    <!-- End navbar -->
  </div>
</template>
<script>
export default {
  name: "nav",
  props: ["active"],
  data() {
    return {
      logo: "assets/img/kevron-group-logo.png",
      iosh: "assets/img/iosh.png",
      categories: [],
    };
  },
  created() {
    this.getCourseCategories();
  },
  methods: {
    getCourseCategories() {
      axios
        .get("/api/course-categories")
        .then((response) => (this.categories = response.data))
        .catch();
    },
  },
};
</script>
