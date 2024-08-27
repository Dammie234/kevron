<template>
  <div>
    <div class="page-banner banner-bg-one">
      <div class="container">
        <div class="banner-text">
          <h1>{{ title }}</h1>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item">
                <router-link :to="{ name: 'dashboard' }">Home</router-link>
              </li>
              <li class="breadcrumb-item active" aria-current="page">{{ title }}</li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "page-title",
  props: ["title"],
};
</script>
