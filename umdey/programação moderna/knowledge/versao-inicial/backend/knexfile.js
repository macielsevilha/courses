module.exports = {
    client: 'postgresql',
    connection: {
        database: 'knowledge',
        user: 'postgres',
        password: 'M5m9p'
    },
    pool: {
        min: 2,
        mac: 10
    },
    migrations: {
        tableName: 'knex_migrations'
    }
}