<template>
  <div>
    <page-header></page-header>
    <page-nav active="news"></page-nav>
    <!-- Page Banner -->
    <div
      class="page-banner banner-bg-one"
      style="background-image: url(../../assets/img/heath-and-safety-consultancy.jpg)"
    >
      <div class="container">
        <div class="banner-text">
          <h1 class="garamond page-title" style="font-size: 65px">{{ title }}</h1>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">{{ title }}</li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
    <!-- End Page Banner -->

    <!-- Latest News -->
    <section class="latest-news pt-100 pb-180 white-bg">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-4" v-for="post in posts" :key="post.id">
            <div class="single-blog-post">
              <a href="#">
                <img :src="post.featured_image" alt="Blog Image" />
              </a>

              <div class="blog-post-content">
                <span
                  ><i class="icofont-ui-calendar"></i>
                  {{ post.updated_at | moment("Do MMMM YYYY") }}</span
                >
                <h3>
                  <router-link :to="{ name: 'news_show', params: { slug: post.slug } }">{{
                    post.title
                  }}</router-link>
                </h3>
                <router-link
                  :to="{ name: 'news_show', params: { slug: post.slug } }"
                  class="default-btn"
                  >Read More</router-link
                >
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Latest News -->
    <page-footer></page-footer>
  </div>
</template>
<script>
export default {
  name: "news",

  mounted() {
    window.scrollTo(0, 0);
    this.getPosts();
  },

  data() {
    return {
      title: "Blog",
      posts: [],
    };
  },
  methods: {
    getPosts() {
      axios
        .get("/api/post")
        .then((response) => (this.posts = response.data))
        .catch();
    },
  },
};
</script>
<style scoped>
.list li {
  list-style: none;
}
</style>
