<template>
   <div class="home">
      <page-title-vue icon="fa fa-home" main="Dashboard" 
          sub="Base de Conhecimento" />
      <div class="stats">
        <stat-vue title="Categorias" :value="stat.categories"
          icon="fa fa-folder" color="#d54d50" >
        </stat-vue>
        <stat-vue title="Artigos" :value="stat.articles"
          icon="fa fa-file" color="#3bc480" >
        </stat-vue>
        <stat-vue title="Usuários" :value="stat.users" 
          icon="fa fa-user" color="#3282cd" >
        </stat-vue>
      </div>
   </div>
</template>

<script>
import PageTitleVue from '../template/PageTitle.vue';
import StatVue from './Stat.vue';
import axios from 'axios'
import { baseApiUrl } from '@/global'

export default {
 name: 'Home',
 components: { PageTitleVue, StatVue },
 data: function() {
    return {
        stat: {}
    }
 },
 methods: {
    getStats() {
        axios.get(`${baseApiUrl}/stats`).then(res => this.stat = res.data)
    }
 },
 mounted() {
    this.getStats()
 }
}
</script>

<style>
    .stats {
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
    }

</style>