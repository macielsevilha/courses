<template>
    <div class="articles-by-category">
      <page-title-vue icon="fa fa-folder-o" :main="category.name" sub="Categoria" />
      <ul>
        <li v-for="article in articles" :key="article.id">
          <article-item-vue :article="article" />
        </li>
      </ul>
      <div class="load-more">
        <button v-if="loadMore" class="btn btn-lg btn-outline-primary"
        @click="getArticles">Carregador Mais Artigos</button>
      </div>
    </div>
  </template>
  
  <script>
  import { baseApiUrl } from '../../global';
  import Axios from 'axios';
  import PageTitleVue from '../template/PageTitle.vue';
  import ArticleItemVue from './ArticleItem.vue';
  
  export default {
     name: 'ArticleByCategory',
     components: { PageTitleVue, ArticleItemVue },
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
      },
      getArticles() {
        const url = `${baseApiUrl}/categories/${this.category.id}/articles?page=${this.page}`
        Axios(url).then(res => {
          this.articles = this.articles.concat(res.data)
          this.page++

          if(res.data.lenght === 0) this.loadMore = false
        })
      }
     },
     mounted() {
       this.category.id = this.$route.params.id
       this.getCategory()
       this.getArticles()
     }
  }
  </script>
  
  <style>
    .articles-by-category ul {
      list-style-type: none;
      padding: 0px;
    }
    .articles-by-category .load-more {
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-top: 25px;
    }
  </style>