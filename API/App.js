const express = require('express');
const port = process.env.PORT || 8080;

const app = express();

const db = require('knex')({
    client: 'pg',
    connection: {
        host: '127.0.0.1',
        user: 'postgres',
        password: '6625',
        database: 'notelist'
    }
});

db.schema.hasTable('notes').then(function (exists) {
    if (!exists) {
        return db.schema.createTable('notes', function (t) {
            t.increments('id').primary();
            t.string('title', 100).notNullable();
            t.string('subTitle', 100).notNullable();
            t.string('createdOn', 20).notNullable();
        });
    }
});

app.post('/note', (req, res) => {
    
})

app.listen(port, () => {
    console.log(`server is running on port ${port}`)
});
