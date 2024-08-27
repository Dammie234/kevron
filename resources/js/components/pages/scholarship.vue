<template>
 <div>
  <page-header></page-header>
  <page-nav active="scholarship"></page-nav>
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
   <div class="row py-80">
    <div class="col-lg-9">
     <div class="single-event-area">
      <div class="single-preview-img">
       <img :src="'../' + asset" alt="Asset Safety Management" />
      </div>
      <div class="single-event-description">
       <h2>{{ title }}</h2>
       <p>
        Kevron Group is pleased to announce the second edition of the Kevron
        Undergraduate Scholarship Scheme, in partnership with the <strong>Nigerian Institution of Safety
         Engineers (NISafetyE)</strong> . This annual scholarship aims to promote excellence in the field of safety
        engineering and occupational health, safety, security, and environment (HSSE) in Nigeria,
        fostering research initiatives in this crucial sector.
       </p>
       <h5>Brief Description</h5>
       <p>
        The Scholarship Scheme is designed for students enrolled in Federal Universities and
        Polytechnics across Nigeria. Applicants are expected to undertake research in Safety Engineering
        or HSSE as part of their final year project.
       </p>
       <h5>Criteria for Application</h5>
       <ul class="course-accordion mb-30">
        <li class="course-accordion-list">
         <h4 class="ca-section-title">Geographical Coverage</h4>

         <div class="course-accordion-content" style="display: none">
          <div class="course-section-content">
           <p class="p-3">
            Awards will be granted to eligible candidates from every state of the
            Federation, including the Federal Capital Territory (FCT).
           </p>
          </div>
         </div>
        </li>

        <li class="course-accordion-list">
         <h4 class="ca-section-title">Disciplines</h4>

         <div class="course-accordion-content">
          <div class="course-section-content">
           <p class="p-3">
            Applications are open to full-time undergraduates in their 300 level or 400 level of
            study in the following disciplines within Nigerian Federal Universities or Polytechnics:
           </p>
           <ul class="list-unstyled ml-5">
            <li><i class="icofont-thin-double-right"></i> Engineering</li>
            <li>
             <i class="icofont-thin-double-right"></i> Sciences
            </li>
            <li><i class="icofont-thin-double-right"></i> Social Science</li>
            <li>
             <i class="icofont-thin-double-right"></i> Any other related disciplines
            </li>

           </ul>
          </div>
         </div>
        </li>
        <li class="course-accordion-list">
         <h4 class="ca-section-title">
          Eligibility
         </h4>

         <div class="course-accordion-content">
          <div class="course-section-content">
           <p class="p-3">
            Applicants must be registered full-time undergraduates in their 3rd or 4th year of study
            in any Federal University OR Polytechnic in Nigeria. They must be prepared to undertake a
            research topic in Safety Engineering or HSSE as their final year project. Successful candidates will
            also be offered internship positions at Kevron Group or any of the NISafetyE partners. Preference
            will be given to applicants with a minimum GPA of 3.0 out of 5.0 or CGPA of 4.0 out of 7.0 over the
            last two years of study.
           </p>
          </div>
         </div>
        </li>
        <li class="course-accordion-list">
         <h4 class="ca-section-title">Method of Application for Kevron Scholarship </h4>

         <div class="course-accordion-content">
          <div class="course-section-content">
           <p class="p-3">
            Qualified and interested candidates are invited
            to complete the application form. <a
             href="https://docs.google.com/forms/d/e/1FAIpQLSctFhxeh-eQnNjU2zqZj575B20HHlFPR-UH0r4QnKS5U8Bb_Q/viewform?pli=1"
             target="_blank">Click here</a> to access the form.

           </p>
          </div>
         </div>
        </li>
        <li class="course-accordion-list">
         <h4 class="ca-section-title">
          Application Deadline
         </h4>

         <div class="course-accordion-content">
          <div class="course-section-content">
           <p class="p-3">
            The application deadline for the 2024 Kevron Consulting Limited
            Undergraduate Scholarship Award is July 31, 2024.
           </p>
          </div>
         </div>
        </li>

       </ul>

      </div>
     </div>
    </div>
    <div class="col-lg-3">
     <Services />

     <Consultancy class="mt-5" />
    </div>
   </div>
  </div>
  <!-- End Page Banner -->

  <page-footer></page-footer>
 </div>
</template>
<script>
import Services from '../includes/services.vue'
import  Consultancy from '../includes/consultancy.vue';
export default {
 name: "kevron-2024-scholarship",
 mounted() {
  window.scrollTo(0, 0);
 },
 components: {Services, Consultancy},
 data() {
  return {
   asset: "assets/img/scholarship.jpg",
   title: "2024 Kevron Group Undergraduate Scholarship Scheme",
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
   { name: "application-name", content: "2024 Kevron Group Undergraduate Scholarship Scheme" },
   {
    name: "description",
    content:
     "Kevron Group is pleased to announce the second edition of the Kevron Undergraduate Scholarship Scheme, in partnership with the Nigerian Institution of Safety Engineers (NISafetyE) . This annual scholarship aims to promote excellence in the field of safety engineering and occupational health, safety, security, and environment (HSSE) in Nigeria, fostering research initiatives in this crucial sector.",
    id: "desc",
   },
   {
    name: "keywords",
    content:
     " asset safety management, health and safety, hse, safety, safety management",
   },
   { name: "copyright", content: "Kevron Group" },
   { name: "language", content: "EN" },
   { name: "robots", content: "index,follow" },
   { name: "revised", content: "Sunday, April 18th, 2020, 5:15 pm" },
   {
    name: "abstract",
    content:
     "Kevron Group is pleased to announce the second edition of the Kevron Undergraduate Scholarship Scheme, in partnership with the Nigerian Institution of Safety Engineers (NISafetyE) . This annual scholarship aims to promote excellence in the field of safety engineering and occupational health, safety, security, and environment (HSSE) in Nigeria, fostering research initiatives in this crucial sector.",
   },
   { name: "classification", content: "Business" },
   { name: "author", content: "Kevron Group" },
   { name: "designer", content: "Web Tags Ltd" },
   { name: "copyright", content: "2023" },
   { name: "owner", content: "Kayode V. Fowode" },
   { name: "subject", content: "2024 Kevron Group Undergraduate Scholarship Scheme" },
   { name: "directory", content: "submission" },
   { name: "category", content: "business" },
   { name: "coverage", content: "Worldwide" },
   { name: "distribution", content: "Global" },
   { name: "rating", content: "General" },
   { name: "revisit-after", content: "7 days" },
   { property: "og:title", content: "2024 Kevron Group Undergraduate Scholarship Scheme" },
   { property: "og:type", content: "website" },
   { property: "og:image", content: "" },
   { property: "og:site_name", content: "Kevron Group" },
   {
    property: "og:description",
    content:
     "Kevron Group is pleased to announce the second edition of the Kevron Undergraduate Scholarship Scheme, in partnership with the Nigerian Institution of Safety Engineers (NISafetyE) . This annual scholarship aims to promote excellence in the field of safety engineering and occupational health, safety, security, and environment (HSSE) in Nigeria, fostering research initiatives in this crucial sector.",
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
