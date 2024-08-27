<template>
  <header class="sidebar-header" role="banner">
    <h1 class="sidebar-logo">
      <a href="#">kevron consultancy <span>services</span></a>
    </h1>
    <div class="nav-wrap">
      <nav class="main-nav" role="navigation">
        <ul class="unstyled list-hover-slide">
          <li>
            <a
              href="/consultancy/onsite-hse-management"
              :class="active && active == 'project-safety' ? 'current' : ''"
            >
              Onsite HSE Management / Project Safety Management</a
            >
          </li>

          <li>
            <a
              href="/consultancy/management-system-implementation-iso-certification"
              :class="active && active == 'management-system' ? 'current' : ''"
            >
              Management System Implementation / ISO Certification</a
            >
          </li>
          <li>
            <a
              href="/consultancy/asset-safety-management"
              :class="active && active == 'asset-safety' ? 'current' : ''"
            >
              Asset Safety Management</a
            >
          </li>
          <li>
            <a
              href="/consultancy/strategic-safety-management"
              :class="active && active == 'strategic-safety' ? 'current' : ''"
            >
              Strategic Safety Management</a
            >
          </li>
          <li>
            <a
              href="/consultancy/qhsse-documentation"
              :class="active && active == 'qhsse-documentation' ? 'current' : ''"
            >
              QHSSE Documentation</a
            >
          </li>
          <li>
            <a
              href="/consultancy/research-and-publication"
              :class="active && active == 'publication' ? 'current' : ''"
            >
              Research and Publication</a
            >
          </li>
        </ul>
      </nav>
    </div>
  </header>
</template>
<script>
export default {
  name: "consultancy",
  props: ["active"],
};
</script>
