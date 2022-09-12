module.exports = app => {
    const { existsOrError, notExistsOrError } = app.api.validation

    const save = (req, res) => {
        const article = { ...req.body }
        if(req.params.id) article.id = req.params.id

        try {
            existsOrError(article.name, 'Nome não informado')
            existsOrError(article.description, 'Descrição não informada')
            existsOrError(article.categoryId, 'Categoria não informada')
            existsOrError(article.userId, 'Autor não informado')
            existsOrError(article.content, 'Conteúdo não informado')
        } catch(msg) {
            res.status(400).send(msg)
        }

        if(article.id) {
            app.db('articles')
               .update(article)
               .where({ id: article.id })
               .then(_ => res.status(204).send())
               .catch(err => res.status(500).send(err))
        } else {
            app.db('articles')
               .insert(article)
               .then(_ => res.status(204).send())
               .catch(err => res.status(500).send(err))
        }

    }

    const remove = async (req, res) => {
        try {
            const rowsDeleted = await app.db('articles')
                .where({ id: req.params.id}).del()
            notExistsOrError(rowsDeleted, 'Artigo não foi encontrado.')

            res.status(204).send()
        } catch(msg) {
            res.status(500).send(msg)
        }
    }
    const limit = 10 // usado para paginação
    const get  = async (req, res) => {
        const page = req.query.page || 1

        const result = await app.db('articles').count('id').first()
        const count = parseInt(result.count)

        app.db('articles')
           .select('id', 'name', 'description')
           .limit(limit).offset(page * limit - limit)
           .then(article => res.json({ data: article, count, limit}))
           .catch(err => res.status(500).send(err))

    }
}