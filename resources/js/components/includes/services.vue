<template>
  <header class="sidebar-header" role="banner">
    <h1 class="sidebar-logo">
      <a href="#">kevron <span>services</span></a>
    </h1>
    <div class="nav-wrap">
      <nav class="main-nav" role="navigation">
        <ul class="unstyled list-hover-slide">
          <li>
            <a
              href="/services/consultancy"
              :class="active && active == 'consultancy' ? 'current' : ''"
              >Consultancy</a
            >
          </li>
          <li>
            <a
              href="/services/hse-manpower-supply-and-recruitment"
              :class="active && active == 'manpower-recruitment' ? 'current' : ''"
              >HSE Manpower Supply &amp; Recruitment</a
            >
          </li>

          <li>
            <a
              href="/services/hse-training-courses"
              :class="active && active == 'hse-courses' ? 'current' : ''"
              >HSE Training Courses</a
            >
          </li>
          <li>
            <a
              href="/services/environmental-management-and-sustainability"
              :class="active && active == 'environmental-mgt' ? 'current' : ''"
              >Environmental Management &amp; Sustainability</a
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
            <a
              href="/services/floor-markings-and-signage"
              :class="active && active == 'floor-markings' ? 'current' : ''"
              >Floor Markings &amp; Signage</a
            >
          </li>

          <li>
            <a
              href="/services/procurement"
              :class="active && active == 'procurement' ? 'current' : ''"
              >Procurement</a
            >
          </li>
        </ul>
      </nav>
    </div>
  </header>
</template>
<script>
export default {
  props: ["active"],
};
</script>
