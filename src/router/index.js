import { createRouter, createWebHistory } from 'vue-router'
// import HomeView from '../views/HomeView.vue'

const router = createRouter({
  history: createWebHistory(/#/),
  routes: [
    {
      path: '/',
      name: 'index',
      component: () => import('../views/HomeView.vue'),
      children: [
        {
          path: '',
          name: 'home',
          component: () => import('../views/HomePage.vue')
        },
        {
          path: 'search',
          name: 'search',
          component: () => import('../views/SearchView.vue')
        },
        {
          path: 'podcast',
          name: 'podcast',
          component: () => import('../views/PodcastView.vue')
        },
      ]
    },
  ]
})

export default router
