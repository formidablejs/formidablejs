const { Knex } = require('knex');

/** @param {Knex} knex */
exports.up = (knex) => {
	return knex.schema.createTable('password_resets', (table) => {
		table.string('email').primary().unique();
		table.string('token');
		table.timestamp('created_at').default(knex.fn.now());
	});
}

/** @param {Knex} knex */
exports.down = (knex) => knex.schema.dropTable('password_resets');
