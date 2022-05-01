const { Database } = require('@formidablejs/framework');

/** @param {Database} DB */
exports.up = (DB) => {
	return DB.schema.createTable('password_resets', (table) => {
		table.string('email').primary().unique();
		table.string('token');
		table.timestamp('created_at').defaultTo(DB.fn.now());
	});
}

/** @param {Database} DB */
exports.down = (DB) => DB.schema.dropTable('password_resets');
