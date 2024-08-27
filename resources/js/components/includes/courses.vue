<template>
    <header class="sidebar-header" role="banner">
        <h1 class="sidebar-logo">
            <a href="#">kevron hse training <span>courses</span></a>
        </h1>
        <div class="nav-wrap">
            <nav class="main-nav" role="navigation">
                <ul class="unstyled list-hover-slide">
                    <li v-for="cat in categories" :key="cat.id">
                        <a :href="'/courses/' + cat.slug" :class="active && active == cat.slug ? 'current' : ''">
                            {{ cat.title }}</a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
</template>
<script>
export default {
    name: "courses",
    props: ["active"],
    data() {
        return {
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
