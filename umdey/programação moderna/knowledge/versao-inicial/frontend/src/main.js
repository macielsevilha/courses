import 'font-awesome/css/font-awesome.css'
import Vue from 'vue'

import App from './App'

import './config/bootstrap'
import './config/msgs'
import store from './config/store'
import router from './config/router'

Vue.config.productionTip = false

// TEMPORARIO !
require('axios').defaults.headers.common['Authorization'] = 'bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6OCwibmFtZSI6ImVzdGVyIiwiZW1haWwiOiJlc3RlcjEyMzQ1NkBnbWFpbC5jb20iLCJhZG1pbiI6dHJ1ZSwiaWF0IjoxNjYzODkwMjg3LCJleHAiOjE2NjQxNDk0ODd9.lMz7UPdpnk5afNGG1DlNcOc3QHTnmo5wyDUUK7JP8BY'

new Vue({
  store,
  router,
  render: h => h(App)
}).$mount('#app')