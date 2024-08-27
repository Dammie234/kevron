require('./bootstrap');

import Vue from 'vue'
import VueRouter from 'vue-router'
import VueHead from 'vue-head'
import VueMoment from 'vue-moment'
import Vue2Editor from "vue2-editor";
import VueSocialSharing from 'vue-social-sharing'
import VueMeta from 'vue-meta';
// Routes Imported
import {routes} from './routes'
// Import User Class
import User from './helpers/user'
// Sweet alert start
import Swal from 'sweetalert2'
// import notification
import Notification from './helpers/notification'
// Header
import PageHeader from './components/includes/PageHeader.vue'
// Nav
import PageNav from './components/includes/PageNav.vue'
// Footer
import PageFooter from './components/includes/PageFooter.vue'
// UserNav
import AdminNav from './components/includes/admin_nav.vue'
// PageTitle
import PageTitle from './components/includes/page_title.vue'


const Toast = Swal.mixin({
  toast: true,
  position: 'top-end',
  showConfirmButton: false,
  timer: 3000,
  timerProgressBar: true,
  onOpen: (toast) => {
    toast.addEventListener('mouseenter', Swal.stopTimer)
    toast.addEventListener('mouseleave', Swal.resumeTimer)
  }
});
Vue.component('page-header', PageHeader)
Vue.component('page-nav', PageNav)
Vue.component('page-footer', PageFooter)
Vue.component('admin-nav', AdminNav)
Vue.component('page-title', PageTitle)

window.Toast = Toast;
window.Swal = Swal
window.User = User
window.Reload = new Vue()
window.Notification = Notification
Vue.use(VueHead)
Vue.use(VueRouter)
Vue.use(VueMoment)
Vue.use(Vue2Editor)
Vue.use(VueSocialSharing);
Vue.use(VueMeta)

const router = new VueRouter({
    routes,
    mode: 'history'
  })



const app = new Vue({
    el: '#app',
    router
});
