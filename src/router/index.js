import Vue from 'vue'
import VueRouter from 'vue-router'
import Login from '../views/Login.vue'
import TeamDev from '../components/TeamDev.vue'
import Form from "../components/Form.vue";
import FormVhv from "../components/FormVhv.vue";
import dataTable from "../components/dataTable.vue";
import dashboard from "../components/dashboard.vue";
import About from '../views/About.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Login',
    component: Login
  },{
    path: '/TeamDev',
    name: 'TeamDev',
    component: TeamDev
  },
  {
    path: "/Form",
    name: 'Form',
    component: Form,
  },
  {
    path: "/FormVhv",
    name: 'FormVhv',
    component: FormVhv,
  },
  {
    path: "/about",
    name: 'About',
    component: About,
  },
  {
    path: '/dataTable',
    name: 'dataTable',
    component: dataTable
  },
  {
    path: '/dashboard',
    name: 'dashboard',
    component: dashboard
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
