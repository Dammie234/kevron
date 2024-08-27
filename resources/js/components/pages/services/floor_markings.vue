<template>
  <div>
    <page-header></page-header>
    <page-nav active="service"></page-nav>
    <!-- Page Banner -->
    <div
      class="page-banner banner-bg-one"
      style="background-image: url(../../assets/img/10.jpg)"
    >
      <div class="container">
        <div class="banner-text">
          <h1 class="garamond page-title" style="font-size: 65px">
            Floor Markings &amp; Signage
          </h1>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">
                Floor Markings &amp; Signage
              </li>
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
            <Services :active="'floor-markings'" />
          </div>
          <div class="col-lg-9">
            <div class="single-event-description">
              <img :src="'../../' + floor" class="img-fluid mb-3" alt="" />
    <h2>{{ title }}</h2>
              <p>
                We can give your factory/organization a standard look, making it safer to
                eliminate or reduce the risks of pedestrians and vehicles collision.
              </p>
              <h5>Our Approach</h5>
              <p>
                Our floor markings are done to OSHA standard 1910.22 (Walking-Working
                Surfaces). Our aim is to keep your organization/factory area safe and
                provide you with the right advice to enable you meet your health and
                safety obligations. Those in control of factory premises must ensure:
              </p>
              <ul class="list">
                <li>
                  <i class="icofont-thin-double-right"></i> All places of employment,
                  passageways, storerooms, and service rooms shall be kept clean and
                  orderly and in a sanitary condition.
                </li>
                <li>
                  <i class="icofont-thin-double-right"></i>Where mechanical handling
                  equipment is used, sufficient safe clearances shall be allowed for
                  aisles, at loading docks, through doorways and wherever turns or passage
                  must be made. Aisles and passageways shall be kept clear and in good
                  repairs, with no obstruction across or in aisles that could create a
                  hazard.
                </li>
                <li>
                  <i class="icofont-thin-double-right"></i>Permanent aisles and
                  passageways shall be appropriately marked.
                </li>
              </ul>
              <h5>
                The following are considered to comply with the requirements for floor
                marking:
              </h5>
              <p>
                A good floor marking system will generally include lines to demarcate
                lanes, aisles, boundaries and paths of egress, as well as signs to display
                additional information and display any relevant location data such as
                aisles, zones, fire exits, and first aid equipment locations. The floor
                marking lines used to delineate aisles may be any color so long as they
                clearly define the area considered as aisle space. The lines may be
                composed of dots, squares, strip or be continuous, as long as they clearly
                define the aisle area.
              </p>
              <p>
                The recommended width of floor markings designating aisles varies from two
                inches to six inches. Therefore, any width of two inches or more is
                considered acceptable, the recommended width of aisles is a minimum of
                four feet, and at least three feet wider than the largest equipment that
                will be in the aisle.
              </p>
              <h5>
                If you are exposed to any of the following – then you need our floor
                marking service. Permanent aisles and passageways must be marked
              </h5>
              <p>
                Floor marking should be used anywhere there are two or more types of
                traffic, or in any location in which there are safety hazards. The purpose
                of floor marking is to identify safe areas and to separate people from
                hazards. This means that floor marking should not only be used to mark
                existing aisles and passageways, it should be used to establish safe
                aisles and passageways that do not exist without the floor marking.
              </p>
              <h5>Floor Marking Separates Workers from Hazards</h5>
              <p>
                Use floor marking to establish safe pathways for workers to use as they
                walk through your facility. These aisles should be located so as to keep
                dangerous equipment out of reach, and to avoid, when possible, hazards
                such as high noise areas, as well as areas where other types of hazards
                exist.
              </p>
              <p>
                Floor marking can also be used to mark off hazardous areas, leaving all
                other areas open to foot traffic. The areas marked off by floor marking
                tape are identified as being "off limits." Also, employees should be
                trained to recognize and understand the meaning of the floor marking
                scheme being used.
              </p>
              <h5>Floor Marking Separates Pedestrians from Motorized Traffic</h5>
              <p>
                Whenever there is a mix of pedestrian and motorized traffic, such as fork
                lifts, floor marking tape should be used to identify aisles set aside for
                a specific type of traffic. In a warehouse in which powered industrial
                trucks (fork lifts) are moving around, and going in and out of rows of
                storage racks, pedestrian lanes should be clearly marked. All foot traffic
                must remain within the marked aisles, and forklifts may not enter those
                pathways except at designated crossing locations.
              </p>
              <h4>Floor Marking - What Colour Should Be Used</h4>
              <p>
                Our Consultants would sit with your team to establish a floor marking
                colour coding scheme and follow that standard throughout your facility.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <page-footer></page-footer>
  </div>
</template>
<script>
import Services from "../../includes/services.vue";
export default {
  name: "floor-markings",
  components: { Services },
  mounted() {
    window.scrollTo(0, 0);
  },
  data() {
    return {
      floor: "assets/img/services/floor-markings.jpg",
      title: "Floor Markings & Signage",
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
          "We can give your factory the look you never imagine and making it safer and eliminate or reduce the risks of pedestrians and vehicles collision.",
        id: "desc",
      },
      {
        name: "keywords",
        content:
          "floor markings and signage, floor markings, health and safety, passageways, safety hazards, hazards, aisles, safety",
      },
      { name: "copyright", content: "Kevron Group" },
      { name: "language", content: "EN" },
      { name: "robots", content: "index,follow" },
      { name: "revised", content: "Sunday, April 18th, 2020, 5:15 pm" },
      {
        name: "abstract",
        content:
          "We can give your factory the look you never imagine and making it safer and eliminate or reduce the risks of pedestrians and vehicles collision.",
      },
      { name: "classification", content: "Business" },
      { name: "author", content: "Kevron Group" },
      { name: "designer", content: "Web Tags Ltd" },
      { name: "copyright", content: "2023" },
      { name: "owner", content: "Kayode V. Fowode" },
      { name: "subject", content: "Floor Markings & Signage" },
      { name: "directory", content: "submission" },
      { name: "category", content: "business" },
      { name: "coverage", content: "Worldwide" },
      { name: "distribution", content: "Global" },
      { name: "rating", content: "General" },
      { name: "revisit-after", content: "7 days" },
      { name: "og:title", content: "Floor Markings & Signage" },
      { name: "og:type", content: "website" },
      { name: "og:image", content: "" },
      { name: "og:site_name", content: "Kevron Group" },
      {
        name: "og:description",
        content:
          "We can give your factory the look you never imagine and making it safer and eliminate or reduce the risks of pedestrians and vehicles collision.",
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
