<template>
    <div class="articles-by-category">
      <page-title-vue icon="fa fa-folder-o" :main="category.name" sub="Categoria" />
    </div>
  </template>
  
  <script>
  import { baseApiUrl } from '../../global';
  import Axios from 'axios';
  import PageTitleVue from '../template/PageTitle.vue';
  
  export default {
     name: 'ArticleByCategory',
     components: { PageTitleVue },
     data: function() {
      return {
          category: {},
          articles: [],
          page: 1,
          loadMore: true
      }
     },
     methods: {
      getCategory() {
          const url = `${baseApiUrl}/categories/${this.category.id}`
          Axios(url).then(res => this.category = res.data)
      }
     },
     mounted() {
       this.category.id = this.$route.params.id
       this.getCategory()
     }
  }
  </script>
  
  <style>
  
  </style>