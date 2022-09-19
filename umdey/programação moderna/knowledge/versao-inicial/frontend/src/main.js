import 'font-awesome/css/font-awesome.css'
import Vue from 'vue'

import App from './App'

import './config/bootstrap'
import store from './config/store'
import router from './config/router'

Vue.config.productionTip = false

// TEMPORARIO !
require('axios').defaults.headers.common['Authorization'] = 'bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6OCwibmFtZSI6ImVzdGVyIiwiZW1haWwiOiJlc3RlcjEyMzQ1NkBnbWFpbC5jb20iLCJhZG1pbiI6dHJ1ZSwiaWF0IjoxNjYzNjI3MjA2LCJleHAiOjE2NjM4ODY0MDZ9.RUP_Y4G-rEJXvEr8de7T8z_rm-ioBPJVRLlQ0dmDa08'

new Vue({
  store,
  router,
  render: h => h(App)
}).$mount('#app')