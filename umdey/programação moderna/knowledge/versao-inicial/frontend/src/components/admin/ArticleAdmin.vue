<template>
  <div class="article-admin">
      <b-form>
          <input id="category-id" type="hidden" v-model="article.id" />
          <b-form-group label="Nome:" label-for="category-name">
              <b-form-input id="category-name" type="text"
                  v-model="article.name" required
                  :readonly="mode === 'remove'"
                  placeholder="Informe o Nome da Categoria..." />
          </b-form-group>
          <b-form-group v-if="mode === 'save'" label="Categoria Pai:" label-for="category-parentId">
              <b-form-select 
                  id="category-parentId"
                  :options="categories" v-model="article.parentId" />
        
          </b-form-group>
          <b-form-group label="Conteúdo" label-for="category-content">
            <vue-editor v-model="article.content" placeholder="Informe o Conteúdo do Artigo..." />
          </b-form-group>
          <b-button variant="primary" v-if="mode === 'save'"
              @click="save">Salvar</b-button>
          <b-button variant="danger" v-if="mode === 'remove'"
              @click="remove">Excluir</b-button>
          <b-button class="ml-2" @click="reset">Cancelar</b-button>
      </b-form>
      <hr>
      <b-table hover striped :items="articles" :fields="fields">
          <template slot="actions" slot-scope="data">
              <b-button variant="warning" @click="loadCategory(data.item)" class="mr-2">
                  <i class="fa fa-pencil"></i>
              </b-button>
              <b-button variant="danger" @click="loadCategory(data.item, 'remove')">
                  <i class="fa fa-trash"></i>
              </b-button>
          </template>
      </b-table>
  </div>
</template>

<script>
import { VueEditor } from 'vue2-editor'
import { baseApiUrl, showError } from '@/global'
import axios from 'axios'
export default {
  name: 'ArticleAdmin',
  components: { VueEditor },
  data: function() {
      return {
          mode: 'save',
          article: {},
          articles: [],
          categories: [],
          users: [],
          page: 1,
          limit: 0,
          count: 0,
          fields: [
              { key: 'id', label: 'Código', sortable: true },
              { key: 'name', label: 'Nome', sortable: true },
              { key: 'description', label: 'Descrição', sortable: true },
              { key: 'actions', label: 'Ações' }
          ]
      }
  },
  methods: {
      loadCategories() {
          const url = `${baseApiUrl}/categories`
          axios.get(url).then(res => {
              //// this.categories = res.data //
              this.categories = res.data.map(category => {
                  return { ...category, value: category.id, text: category.path }
              })
          })
      },
      reset() {
          this.mode = 'save'
          this.category = {}
          this.loadCategories()
      },
      save() {
          const method = this.category.id ? 'put' : 'post'
          const id = this.category.id ? `/${this.category.id}` : ''
          axios[method](`${baseApiUrl}/categories${id}`, this.category)
              .then(() => {
                  this.$toasted.global.defaultSuccess()
                  this.reset()
              })
              .catch(showError)
      },
      remove() {
          const id = this.category.id
          axios.delete(`${baseApiUrl}/categories/${id}`)
              .then(() => {
                  this.$toasted.global.defaultSuccess()
                  this.reset()
              })
              .catch(showError)
      },
      loadCategory(category, mode = 'save') {
          this.mode = mode
          this.category = { ...category }
      }
  },
  mounted() {
      this.loadCategories()
  }
}
</script>

<style>
</style>