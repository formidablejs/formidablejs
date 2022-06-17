const { Database } = require('@formidablejs/framework');

/** @param {Database} DB */
exports.up = (DB) => {
	return DB.schema.createTable('personal_access_tokens', (table) => {
		table.increments('id').primary();
		table.string('tokenable_type');
		table.bigInteger('tokenable_id').index().unsigned();
		table.string('name');
		table.string('abilities').nullable();
		table.text('payload').nullable();
		table.bigInteger('ttl').index().unsigned().nullable();
		table.timestamp('last_used_at').nullable();
		table.timestamps(true, true);
	});
}

/** @param {Database} DB */
exports.down = (DB) => DB.schema.dropTable('personal_access_tokens');
