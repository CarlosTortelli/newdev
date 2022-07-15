
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
 exports.up = function(knex) {
  return knex.schema.alterTable('curso', function(table) {
    table
      .integer('aulaId') 
      .unsigned() 
      .notNullable() 
      .references('id') 
      .inTable('aula') 
      .onDelete('CASCADE'); 
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function(knex) {
  return knex.schema.alterTable('aula', function(table) {
    table.dropForeign('aulaId');
    table.dropColumn('aulaId');
  })
};