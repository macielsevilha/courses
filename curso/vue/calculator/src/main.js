import { createApp } from 'vue'
import App from './App'

createApp(App).mount('#app')

new createApp({
   render: h => h(App)
})
