import 'font-awesome/css/font-awesome.css'
import Vue from 'vue'

import App from './App'

import './config/bootstrap'
import store from './config/store'
import router from './config/router'

Vue.config.productionTip = false

// TEMPORARIO !
require('axios').defaults.headers.common['Authorization'] = 'bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6NCwibmFtZSI6Ik1hY2llbCBEIEFuam9zIiwiZW1haWwiOiJtYWNpZWxzZXZpbGhhQGdtYWlsLmNvbSIsImFkbWluIjpmYWxzZSwiaWF0IjoxNjYzNTkzOTY0LCJleHAiOjE2NjM4NTMxNjR9.n_usckPxa0eTroC2GKvlvk37EfmQQJi1Dmkte7bOplU'

new Vue({
  store,
  router,
  render: h => h(App)
}).$mount('#app')