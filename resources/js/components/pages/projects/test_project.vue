<template>
  <div>
    <page-header></page-header>
    <page-nav active="projects"></page-nav>
    <!-- Page Banner -->
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-10 my-3">
          <nav aria-label="breadcrumb mt-5">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item active">
                <router-link :to="{ name: 'projects' }">Projects</router-link>
              </li>
              <li class="breadcrumb-item active" aria-current="page">
                Standard Chartered PMO, Global
              </li>
            </ol>
          </nav>
          <h1 class="garamond page-title">Standard Chartered PMO, Global</h1>
          <p>
            Global bank Standard Chartered’s world-wide property transformation programme,
            ‘Twice the Experience’, aims to maximise efficiencies in its portfolio while
            delivering a high-quality workplace for its staff.
          </p>
          <img
            src="https://storageturnerprod.blob.core.windows.net/cache/9/6/2/6/7/2/9626722e9b0c3ab66e1d96e195693aa3e557457e.jpg"
            alt="Project Image"
          />
        </div>
      </div>
    </div>
    <!-- End Page Banner -->
    <section class="key_information">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="row">
                        <div class="col-lg-12">
                            <h5 class="text-uppercase primary-color bold">key information</h5>
                            <div class="line"></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="media primary-color my-3">
                                <img style="margin-right: 8px !important;" src="https://img.icons8.com/ios/20/291770/marker-o.png">
                                <div class="media-body">
                                  <h6 class="mt-0 primary-color"><strong>Location:</strong>  Nigeria</h6>
                                </div>
                              </div>
                              <div class="media primary-color my-3">
                                <img style="margin-right: 8px !important;" src="https://img.icons8.com/ios/20/291770/calendar--v1.png">
                                <div class="media-body">
                                  <h6 class="mt-0 primary-color pl-3"> <strong> Date Started:</strong> 2020</h6>
                                </div>
                              </div>

                        </div>
                        <div class="col-lg-4">
                            <div class="media primary-color my-3">
                                <img style="margin-right: 8px !important;" src="https://img.icons8.com/ios/20/291770/calendar--v1.png">
                                <div class="media-body">
                                  <h6 class="mt-0 primary-color pl-3"> <strong> Completed Date :</strong> 2022</h6>
                                </div>
                              </div>
                              <div class="media primary-color my-3">
                                <img style="margin-right: 8px !important;" src="https://img.icons8.com/windows/20/291770/user.png">
                                <div class="media-body">
                                  <h6 class="mt-0 primary-color pl-3"> <strong> Client Type :</strong> Real Estate</h6>
                                </div>
                              </div>

                        </div>
                        <div class="col-lg-4">
                            <div class="media primary-color my-3">
                                <img style="margin-right: 8px !important;" src="https://img.icons8.com/ios/20/291770/key.png">
                                <div class="media-body">
                                  <h6 class="mt-0 primary-color pl-3"> <strong> Main Services :</strong> PMO, advisory, cost and commercial management, procurement, programme management, programme strategy and set up, project management, digital</h6>
                                </div>
                              </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="single-event-area pb-180">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-10">

              <div class="single-event-description">
                <h3 class="h3 mt-3">Project Description</h3>

                <p> As part of the evolution of Standard Chartered’s existing outsourced strategic partnership, there was an opportunity to build an independent programme management office (PMO) to oversee the built-asset programme.</p>
               <p>We were brought on board with an initial mandate to set out a globally consistent governance and assurance framework, ensuring that all property projects and programmes are consistently reported and delivered, but we also had the much larger task of delivering a suite of strategic initiatives to drive innovation.</p>
               <p>Through our dedicated focus to driving improvements and efficiencies for the bank in digital, procurement and cost management, we have secured a total return on investment of 45 percent over the past four years.</p>




              </div>
            </div>
          </div>
        </div>
      </section>
    <page-footer></page-footer>
  </div>
</template>
<script>
export default {
  name: "projects",
  data() {
    return {
      bg: "assets/img/projects/project-bg.png",
      projects: [],
    };
  },
  created() {
    this.getProjects();
  },
  methods: {
    getProjects() {
      axios
        .get("/api/project/")
        .then((response) => (this.projects = response.data))
        .catch();
    },
  },
};
</script>
<style lang="css" scoped>

</style>

</style>
