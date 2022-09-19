<template>
  <div class="admin-pages">
    <page-title-vue icon="fa fa-cogs" main="Administração do Sistema"
       sub="Cadastros & Cia" />
       <div class="admin-pages-tabs">
        <b-card no-body>
           <b-tabs card>
             <b-tab title="Artigos" active>
                 <article-admin-vue />
             </b-tab>
             <b-tab title="Categorias">
                <category-admin-vue />
             </b-tab>
             <b-tab title="Usuários">
                <user-admin-vue />
             </b-tab>
           </b-tabs>
        </b-card>
       </div>
  </div>
</template>

<script>
import PageTitleVue from '../template/PageTitle.vue';
import ArticleAdminVue from './ArticleAdmin.vue';
import CategoryAdminVue from './CategoryAdmin.vue';
import UserAdminVue from './UserAdmin.vue';

export default {
  name: "AdminPages",
  components: { PageTitleVue, ArticleAdminVue, CategoryAdminVue, UserAdminVue }
}
</script>

<style>

</style>