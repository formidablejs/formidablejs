exports.up = (knex) => {
	return knex.schema.createTable('personal_access_tokens', (table) => {
		table.increments('id').primary();
		table.string('tokenable_type');
		table.integer('tokenable_id');
		table.string('name');
		table.string('abilities').nullable();
		table.timestamp('last_used_at').nullable();
		table.timestamps();
	});
}

exports.down = (knex) => knex.schema.dropTable('personal_access_tokens');
