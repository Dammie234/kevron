<template>
    <div>
        <page-header></page-header>
        <page-nav active="consultancy"></page-nav>
        <!-- Page Banner -->
        <div class="page-banner banner-bg-one"
            style="background-image: url(../../assets/img/heath-and-safety-consultancy.jpg)">
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
        <!-- Page Banner -->
        <div class="container">
            <div class="row justify-content-center py-80">
                <div class="col-lg-9">
                    <div class="single-event-area">
                        <div class="single-preview-img">
                            <img :src="'../' + publication" alt="Research and Publication" />
                        </div>
                        <div class="single-event-description">
                            <p>
                                The law requires all employers to ensure the health, safety and welfare of
                                their employees and to ensure adequate arrangements are put in place to
                                guarantee their safety and well-being.
                            </p>
                            <p>
                                The article was published in SHP Magazine and considers the legal issues
                                involved in procurement, discusses how to mitigate any health and safety
                                risks that may arise, and how health and safety practitioners should
                                communicate these risks, both internally and to their contractors. Please
                                see page 4 & 38-41 of SHP-March edition.
                            </p>
                            <p>
                                In October 2014, Kevron successfully wrote the International Construction
                                award syllabus for ABIOSH, UK and in return was granted an exclusive right
                                to offer the ABIOSH International Certificate in Construction Health &
                                Safety course in Nigeria.
                            </p>
                            <p>
                                Our strength also lies in developing course contents and modules that
                                meets industry needs. We have developed accredited courses for ABIOSH and
                                OGSC and in-house courses for different organisations.
                            </p>
                            <p>
                                We also promote research and development in the field of QHSSE via our
                                Scholarship programmes for Undergraduate Students. We offer financial
                                support to undergraduate students that undertake research in the field of
                                QHSSE as part of their final year dissertation and / or project.
                            </p>
                            <p>
                                Thus, whether it is external or internal publications our team of HSE
                                experts can provide organisations with the support they need to ensure
                                successful publications of HSE information. Also, Kevron can assist in
                                developing and implementing communication systems between different areas
                                of an organisation.
                            </p>
                            <p>
                                Kevron can also work with organisations’ management team in identifying,
                                selecting and evaluating available and current sources of health and
                                safety information for dissemination internally and externally.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 my-3">
                    <Consultancy :active="'publication'" />
                </div>
            </div>
        </div>
        <!-- End Page Banner -->

        <page-footer></page-footer>
    </div>
</template>
<script>
import Consultancy from "./../../includes/consultancy.vue";
export default {
    name: "publication",
    mounted() {
        window.scrollTo(0, 0);
    },
    components: {
        Consultancy,
    },
    data() {
        return {
            publication: "assets/img/services/publication.jpg",
            title: "Research and Publication",
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
                    "Kevron Consultants are seasoned researchers who are passionate about HSE research works and publications.",
                id: "desc",
            },
            {
                name: "keywords",
                content: "research and publication",
            },
            { name: "copyright", content: "Kevron Group" },
            { name: "language", content: "EN" },
            { name: "robots", content: "index,follow" },
            { name: "revised", content: "Sunday, April 18th, 2020, 5:15 pm" },
            {
                name: "abstract",
                content:
                    "Kevron Consultants are seasoned researchers who are passionate about HSE research works and publications.",
            },
            { name: "classification", content: "Business" },
            { name: "author", content: "Kevron Group" },
            { name: "designer", content: "Web Tags Ltd" },
            { name: "copyright", content: "2023" },
            { name: "owner", content: "Kayode V. Fowode" },
            { name: "subject", content: "Research and Publication" },
            { name: "directory", content: "submission" },
            { name: "category", content: "business" },
            { name: "coverage", content: "Worldwide" },
            { name: "distribution", content: "Global" },
            { name: "rating", content: "General" },
            { name: "revisit-after", content: "7 days" },
            { property: "og:title", content: "Research and Publication" },
            { property: "og:type", content: "website" },
            { property: "og:image", content: "" },
            { property: "og:site_name", content: "Kevron Group" },
            {
                property: "og:description",
                content:
                    "Kevron Consultants are seasoned researchers who are passionate about HSE research works and publications.",
            },
            { property: "og:phone_number", content: "+234-13-424-578" },
            { property: "og:email", content: "info@kevrongroup.com" },
        ],
    },
};
</script>
<style scoped>
.list li {
    list-style: none;
}
</style>
