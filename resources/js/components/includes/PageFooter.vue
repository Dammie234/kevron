<template>
  <div>
    <!-- Footer Area -->
    <footer class="footer-area ptb-100">
      <div class="container">
        <div class="row">
          <div class="col-sm-7 col-md-6 col-lg-3">
            <div class="single-footer-widget">
              <h3>About Us</h3>
              <p>
                Kevron Group is a Quality, Health, Safety, Security Environmental (QHSSE)
                consultancy and Training Company offering services to clients anywhere in
                the world covering
              </p>
            </div>
          </div>
          <div class="col-sm-5 col-md-6 col-lg-3">
            <div class="single-footer-widget pl-30">
              <h3>Quick Menu</h3>
              <ul class="quick-menu">
                <li>
                  <a href="/"> Home</a>
                </li>
                <li>
                  <a href="/about/about-kevron-group"> About</a>
                </li>
                <li>
                  <a href="/projects"> Projects</a>
                </li>
                <li>
                  <a href="/contact"> Contact </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-sm-6 col-md-6 col-lg-3">
            <div class="single-footer-widget">
              <h3>Services</h3>
              <ul class="quick-menu">
                <li>
                  <a href="/services/consultancy">Consultancy</a>
                </li>

                <li>
                  <a href="/services/hse-manpower-supply-and-recruitment"
                    >HSE Manpower Supply &amp; Recruitment</a
                  >
                </li>
                <li>
                  <a href="/services/hse-training-courses">HSE Training Courses</a>
                </li>
                <li>
                  <a href="/services/environmental-management-and-sustainability"
                    >Environmental Management &amp; Sustainability</a
                  >
                </li>
                <li>
                  <a href="/services/technical-safety-studies"
                    >Technical Safety Studies / Process Safety Engineering</a
                  >
                </li>

                <li>
                  <a href="/services/floor-markings-and-signage"
                    >Floor Markings &amp; Signage</a
                  >
                </li>
                <li>
                  <a href="/services/procurement">Procurement</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-sm-6 col-md-6 col-lg-3">
            <div class="single-footer-widget">
              <h3>Projects</h3>
              <ul class="instagram-feed">
                <li v-for="pro in projects" :key="pro.id">
                  <a :href="'/projects/' + pro.slug">
                    <div class="d-flex flex-row bd-highlight mb-3">
                      <div class="p-2 bd-highlight" style="width: 40%">
                        <img :src="'../../' + pro.featured_image" alt="" />
                      </div>
                      <div class="p-2 bd-highlight" style="width: 60%">
                        {{ pro.title }}
                      </div>
                    </div>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- End Footer Area -->
    <!-- Bottom footer -->
    <div class="bottom-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-6">
            <p>
              &copy; 2023, All Rights Reserved. Developed by
              <a href="https://webtagsltd.com.ng" target="_blank">Webtags Ltd</a>
            </p>
          </div>
          <div class="col-md-6 col-lg-6">
            <ul class="social-links">
              <li>
                <a target="_blank" href="https://twitter.com/kevronconsult"
                  ><i class="icofont-twitter"></i
                ></a>
              </li>
              <li>
                <a
                  target="_blank"
                  href="https://web.facebook.com/kevronconsulting/?_rdc=1&_rdr"
                  ><i class="icofont-facebook"></i
                ></a>
              </li>
              <li>
                <a href="https://www.linkedin.com/company/kevron-consulting"
                  ><i class="icofont-linkedin"></i
                ></a>
              </li>
              <!-- <li><a href="#"><i class="icofont-instagram"></i></a></li> -->
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- End bottom footer -->
  </div>
</template>
<script>
export default {
  name: "footer",
  data() {
    return {
      projects: [],
    };
  },
  created() {
    this.getProjects();
  },

  methods: {
    getProjects() {
      axios
        .get("/api/few-projects/")
        .then((response) => (this.projects = response.data))
        .catch();
    },
  },
};
</script>
<style scoped>
.single-footer-widget .instagram-feed li {
  float: left;
  width: 100%;
}
</style>
