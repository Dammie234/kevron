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
    <!-- Single Courses -->
    <section class="single-course-area pt-100 pb-180">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <div class="single-blog-header">
              <h2>{{ post.title }}</h2>
              <span class="date">
                <i class="icofont-calendar"></i>
                {{ post.updated_at | moment("Do MMMM YYYY") }}
              </span>
            </div>

            <div class="single-preview-img">
              <img :src="'../' + post.featured_image" alt="Blog Image" />
            </div>

            <div class="single-blog-description mt-30">
              <p v-html="post.content"></p>
            </div>

            <div class="row mt-30">
              <div class="col-md-6 col-lg-6"></div>

              <div class="col-md-6 col-lg-6">
                <ul class="single-event-share">
                  <li>
                    <span class="social-share">Share <i class="icon-share"></i></span>
                    <ShareNetwork
                      v-for="network in networks"
                      :network="network.network"
                      :key="network.network"
                      :style="{
                        color: '#fff',
                        padding: '7px',
                        marginRight: '3px',
                      }"
                      :url="'https://kevrongroup.com/blog/' + slug"
                      :title="post.title + '(' + slug + ')'"
                      :description="post.content"
                      :twitterUser="sharing.twitterUser"
                    >
                      <i :class="network.icon"></i>
                      <!-- <span>{{ network.name }}</span> -->
                    </ShareNetwork>
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="search-widget">
              <form>
                <input
                  type="text"
                  class="form-control"
                  id="search_post"
                  placeholder="Search post..."
                />

                <button type="submit" class="btn search-btn">
                  <i class="icofont-search"></i>
                </button>
              </form>
            </div>

            <div class="widget categories-widget mt-30">
              <h3 class="title">Categories</h3>
              <ul>
                <li v-for="cat in categories" :key="cat.id">
                  <router-link
                    :to="{ name: 'category_posts', params: { slug: cat.slug } }"
                    >{{ cat.title }} <span>({{ cat.counts }})</span></router-link
                  >
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Single Courses -->
    <!-- End Latest News -->
    <page-footer></page-footer>
  </div>
</template>
<script>
export default {
  name: "news",

  mounted() {
    this.getPost();
    this.getCategories();
    window.scrollTo(0, 0);
  },

  data() {
    return {
      title: "Blog",
      slug: this.$route.params.slug,
      post: "",
      categories: [],
      sharing: {
        title: "",
        description: "",
        twitterUser: "youyuxi",
      },
      networks: [
        { network: "email", name: "Email", icon: "icofont-envelope", color: "#333333" },
        {
          network: "facebook",
          name: "Facebook",
          icon: "icofont-facebook",
          color: "#1877f2",
        },
        {
          network: "linkedin",
          name: "LinkedIn",
          icon: "icofont-linkedin",
          color: "#007bb5",
        },
        {
          network: "messenger",
          name: "Messenger",
          icon: "icofont-facebook-messenger",
          color: "#0084ff",
        },
        {
          network: "skype",
          name: "Skype",
          icon: "icofont-skype",
          color: "#00aff0",
          white: "#fff",
        },
        {
          network: "twitter",
          name: "Twitter",
          icon: "icofont-twitter",
          color: "#1da1f2",
        },
        {
          network: "whatsapp",
          name: "Whatsapp",
          icon: "icofont-whatsapp",
          color: "#25d366",
        },
      ],
    };
  },
  methods: {
    getPost() {
      axios
        .get("/api/post/" + this.slug)
        .then((response) => (this.post = response.data))
        .catch();
    },
    getCategories() {
      axios
        .get("/api/category/")
        .then((response) => (this.categories = response.data))
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
