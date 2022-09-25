<template>
  <div class="article-by-id">
    <page-title-vue icon="fa fa-file-o" :main="article.name" :sub="article.description" />
    <div class="article-content" v-html="article.content"></div>
  </div>
</template>

<script>
import 'highlightjs/styles/dracula.css'
import hljs from 'highlightjs/highlight.pack.js'
import { baseApiUrl } from '../../global';
import Axios from 'axios';
import PageTitleVue from '../template/PageTitle.vue';

export default {
  name: 'ArticleById',
  components: { PageTitleVue },
  data: function() {
    return {
        article: {}
    }
  },
  mounted() {
    const url = `${baseApiUrl}/articles/${this.$route.params.id}`
    Axios.get(url).then(res => this.article = res.data)
  },
  update() {
    document.querySelectorAll('.article-content pre').forEach(e => {
      hljs.highlighBlock(e)
    })
  }
}
</script>

<style>
 .article-content {
    background-color: #fff;
    border-radius: 8px;
    padding: 25px;

 }

 .article-content pre {
    padding: 20px;
    border-radius: 8px;
    font-size: 1.2rem;
 }
 .article-content img {
    max-width: 100%;
 }
 .article-content :last-child {
    margin-bottom: 0px;
 }
</style>