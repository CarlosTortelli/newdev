/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function(knex) {
  return knex.schema.alterTable('aula', function(table){
    table
    .integer('professoresId')
    .unsigned()
    .notNullable()
    .references('id')
    .inTable('professores')
    .onDelete('CASCADE')
  })
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = async function(knex) {
  return knex.schema.alterTable('professores', function(table) {
    table
    .dropForeign('professoresId')
    .dropColumn('professoresId')
  })
};
