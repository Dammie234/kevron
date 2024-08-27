let login = require("./components/auth/login.vue").default;
let register = require("./components/auth/register.vue").default;
let forget = require("./components/auth/forget.vue").default;
let logout = require("./components/auth/logout.vue").default;

let dashboard = require("./components/dashboard.vue").default;

let admin_courses = require("./components/admin/course/index.vue").default;
let edit_admin_course = require("./components/admin/course/edit.vue").default;
let edit_featured_image_course =
    require("./components/admin/course/featured_image.vue").default;
let edit_files_course =
    require("./components/admin/course/edit_files.vue").default;
let create_course_outlines =
    require("./components/admin/course_outline/create.vue").default;
let edit_course_outlines =
    require("./components/admin/course_outline/edit.vue").default;

let admin_projects = require("./components/admin/projects/index.vue").default;
let edit_admin_project =
    require("./components/admin/projects/edit.vue").default;
let edit_project_images =
    require("./components/admin/projects/edit_images.vue").default;

let admin_instructors =
    require("./components/admin/instructor/index.vue").default;

let admin_category = require("./components/admin/category/index.vue").default;

let admin_post = require("./components/admin/post/index.vue").default;

let front_page = require("./components/pages/index.vue").default;
let about_page = require("./components/pages/about.vue").default;
let core_values = require("./components/pages/core_values.vue").default;

let floor_markings =
    require("./components/pages/services/floor_markings.vue").default;
let manpower_recruitment =
    require("./components/pages/services/manpower_recruitment.vue").default;
let procurement =
    require("./components/pages/services/procurement.vue").default;
let consultancy =
    require("./components/pages/services/consultancy.vue").default;
let hse_training_courses =
    require("./components/pages/services/hse_training_courses.vue").default;
let technical_safety_studies =
    require("./components/pages/services/technical_safety_studies.vue").default;
let project_safety =
    require("./components/pages/consultancy/project_safety.vue").default;
let environmental_mgt =
    require("./components/pages/services/environmental_mgt.vue").default;
let management_system =
    require("./components/pages/consultancy/management_system.vue").default;
let asset_safety =
    require("./components/pages/consultancy/asset_safety.vue").default;
let strategic_safety =
    require("./components/pages/consultancy/strategic_safety.vue").default;
let qhsse_documentation =
    require("./components/pages/consultancy/qhsse_documentation.vue").default;
let publication =
    require("./components/pages/consultancy/publication.vue").default;

let contact = require("./components/pages/contact.vue").default;
let nigeria = require("./components/pages/location/nigeria.vue").default;
let ghana = require("./components/pages/location/ghana.vue").default;
let south_africa =
    require("./components/pages/location/south_africa.vue").default;
let united_kingdom =
    require("./components/pages/location/united_kingdom.vue").default;
let locations = require("./components/pages/location/index.vue").default;

let courses = require("./components/pages/courses/index.vue").default;
let course = require("./components/pages/courses/course.vue").default;

let projects = require("./components/pages/projects/index.vue").default;
let project = require("./components/pages/projects/show.vue").default;
let test_project =
    require("./components/pages/projects/test_project.vue").default;

let news = require('./components/pages/news/index.vue').default;
let news_show = require('./components/pages/news/show.vue').default;
let category_posts = require('./components/pages/news/category_posts.vue').default;
let scholarship = require('./components/pages/scholarship.vue').default;


export const routes = [
    { path: "/login", component: login, name: "login" },
    { path: "/register", component: register, name: "register" },
    { path: "/forget", component: forget, name: "forget" },
    { path: "/logout", component: logout, name: "logout" },
    { path: "/dashboard", component: dashboard, name: "dashboard" },

    { path: "/", component: front_page, name: "front-page" },
    {
        path: "/about/about-kevron-group",
        component: about_page,
        name: "about-page",
    },
    { path: "/about/core-values", component: core_values, name: "core-values" },
    {
        path: "/services/floor-markings-and-signage",
        component: floor_markings,
        name: "floor-markings",
    },
    {
        path: "/services/hse-manpower-supply-and-recruitment",
        component: manpower_recruitment,
        name: "manpower-recruitment",
    },
    {
        path: "/services/consultancy",
        component: consultancy,
        name: "consultancy",
    },
    {
        path: "/services/procurement",
        component: procurement,
        name: "procurement",
    },
    {
        path: "/services/hse-training-courses",
        component: hse_training_courses,
        name: "hse-courses",
    },
    {
        path: "/services/technical-safety-studies",
        component: technical_safety_studies,
        name: "technical-safety-studies",
    },
    {
        path: "/consultancy/onsite-hse-management",
        component: project_safety,
        name: "project-safety",
    },
    {
        path: "/services/environmental-management-and-sustainability",
        component: environmental_mgt,
        name: "environmental-mgt",
    },
    {
        path: "/consultancy/management-system-implementation-iso-certification",
        component: management_system,
        name: "management-system",
    },
    {
        path: "/consultancy/asset-safety-management",
        component: asset_safety,
        name: "asset-safety",
    },
    {
        path: "/consultancy/strategic-safety-management",
        component: strategic_safety,
        name: "strategic-safety",
    },
    {
        path: "/consultancy/qhsse-documentation",
        component: qhsse_documentation,
        name: "qhsse-documentation",
    },
    {
        path: "/consultancy/research-and-publication",
        component: publication,
        name: "publication",
    },

    { path: "/locations/nigeria", component: nigeria, name: "nigeria" },
    { path: "/locations/ghana", component: ghana, name: "ghana" },
    {
        path: "/locations/south-africa",
        component: south_africa,
        name: "south-africa",
    },
    {
        path: "/locations/united-kingdom",
        component: united_kingdom,
        name: "united-kingdom",
    },
    { path: "/locations", component: locations, name: "locations" },
    { path: "/contact", component: contact, name: "contact" },
    {path: '/blog', component: news, name: 'news'},
    {path: '/blog/:slug', component: news_show, name: 'news_show'},
    {path: '/blog/category/:slug', component: category_posts, name: 'category_posts'},
    {path: '/kevron-2024-scholarship', component: scholarship, name: 'scholarship'},
    { path: "/admin/courses", component: admin_courses, name: "admin-courses" },
    {
        path: "/admin/courses/edit/:slug",
        component: edit_admin_course,
        name: "edit-admin-course",
    },
    {
        path: "/admin/courses/edit-featured-image/:slug",
        component: edit_featured_image_course,
        name: "edit-featured-image-course",
    },
    {
        path: "/admin/courses/edit-files/:slug",
        component: edit_files_course,
        name: "edit-files-course",
    },
    {
        path: "/admin/courses/course-outline/create/:slug",
        component: create_course_outlines,
        name: "create-course-outlines",
    },
    {
        path: "/admin/courses/course-outline/edit/:slug",
        component: edit_course_outlines,
        name: "edit-course-outlines",
    },

    {
        path: "/admin/instructors",
        component: admin_instructors,
        name: "admin-instructors",
    },

    {
        path: "/admin/category",
        component: admin_category,
        name: "admin-category",
    },

    { path: "/admin/post", component: admin_post, name: "admin-post" },

    {
        path: "/admin/projects",
        component: admin_projects,
        name: "admin-projects",
    },
    {
        path: "/admin/projects/:slug",
        component: edit_admin_project,
        name: "edit-admin-projects",
    },
    {
        path: "/admin/project-images/:slug",
        component: edit_project_images,
        name: "edit-admin-project-images",
    },

    { path: "/courses/:slug", component: courses, name: "courses" },
    { path: "/courses/:course_slug/:slug", component: course, name: "course" },

    { path: "/projects", component: projects, name: "projects" },
    { path: "/projects/:slug", component: project, name: "project" },
    {
        path: "/projects/standard-chartered-pmo-global",
        component: test_project,
        name: "test-project",
    },
];
