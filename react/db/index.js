const { Pool } = require('pg');

const knex = new Pool({
  database:'usersData',
  user: 'postgres',
  password: ''
})

knex.connect();

module.exports = knex;