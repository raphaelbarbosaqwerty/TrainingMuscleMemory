import { createRouter, createWebHistory } from 'vue-router'
import EventDetailsView from '../views/event/DetailsView.vue'
import EventRegisterView from '../views/event/RegisterView.vue'
import EventEditView from '../views/event/EditView.vue'
import EventLayoutView from '../views/event/LayoutView.vue'
import EventListView from '../views/EventListView.vue'
import AboutView from '../views/AboutView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'event-list',
      component: EventListView,
      props: (route) => ({ page: parseInt(route.query.page) || 1 })
    },

    {
      path: '/event/:id',
      name: 'event-layout',
      props: true,
      component: EventLayoutView,
      children: [
        {
          path: '',
          name: 'event-details',
          component: EventDetailsView
        },
        {
          path: 'register',
          name: 'event-register',
          component: EventRegisterView
        },
        {
          path: 'edit',
          name: 'event-edit',
          component: EventEditView
        }
      ]
    },
    // {
    //   path: '/event/:id',
    //   redirect: () => {
    //     return { name: 'event-details' }
    //   },
    //   children: [
    //     {
    //       path: '/register',
    //       redirect: () => {
    //         return { name: 'event-register' }
    //       }
    //     },
    //     {
    //       path: '/edit',
    //       redirect: () => {
    //         return { name: 'event-edit' }
    //       }
    //     }
    //   ]
    // },
    {
      path: '/about',
      name: 'about',
      component: AboutView
    }
  ]
})

export default router
