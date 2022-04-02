const { Knex } = require('knex');

/** @param {Knex} knex */
exports.up = (knex) => {
	return knex.schema.createTable('users', (table) => {
		table.increments('id').primary();
		table.string('name');
		table.string('email').unique();
		table.string('password');
		table.string('remember_token').nullable();
		table.timestamp('email_verified_at').nullable();
		table.timestamps(true, true);
	});
}

/** @param {Knex} knex */
exports.down = (knex) => knex.schema.dropTable('users');
