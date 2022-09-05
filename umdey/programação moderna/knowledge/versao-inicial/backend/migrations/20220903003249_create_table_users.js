
exports.up = function(knex, Promise) {
    return knex.schema.createTable('users', table => {
        table.increments('id').primary()
        table.string('nome').notNull()
        table.string('email').notNull().unique()
        table.string('password').notNull()
        table.string('admin').notNull().defaultTo(false)
      })
};

exports.down = function(knex, Promise) {
    return knex.schema.dropTable('users')
};
