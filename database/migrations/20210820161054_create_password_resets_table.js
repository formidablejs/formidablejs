exports.up = (knex) => {
	return knex.schema.createTable('password_resets', (table) => {
		table.string('email').primary().unique();
		table.string('token');
		table.timestamp('created_at').default(knex.fn.now());
	});
}

exports.down = (knex) => knex.schema.dropTable('password_resets');
