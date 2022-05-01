const { Database } = require('@formidablejs/framework');

/** @param {Database} DB */
exports.up = (DB) => {
	return DB.schema.createTable('users', (table) => {
		table.increments('id').primary();
		table.string('name');
		table.string('email').unique();
		table.string('password');
		table.string('remember_token').nullable();
		table.timestamp('email_verified_at').nullable();
		table.timestamps(true, true);
	});
}

/** @param {Database} DB */
exports.down = (DB) => DB.schema.dropTable('users');
