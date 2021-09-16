exports.up = (knex) => {
	return knex.schema.createTable('users', (table) => {
		table.increments('id').primary();
		table.string('name');
		table.string('email');
		table.string('password');
		table.timestamp('email_verified_at').nullable();
		table.timestamps();
	});
}

exports.down = (knex) => knex.schema.dropTable('users');
