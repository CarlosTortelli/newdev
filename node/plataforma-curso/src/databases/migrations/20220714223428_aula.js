/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
 exports.up = function(knex) {
  return knex.schema.createTable('aula', function (table) {
    table.increments();
    table.string('name');
    table.string('descrição')
    table.string('link')
  })
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function(knex) {
  return knex.schema.dropTable('aula');
};