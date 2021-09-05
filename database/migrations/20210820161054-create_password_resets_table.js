const { schema, string, timestamp } = require('@formidablejs/schema-builder');

/**
 * Create password resets table.
 *
 * @param {Object} db
 * @returns
 */
exports.up = (db) => {
	return db.createTable('password_resets', schema([
		string('email').primary().unique(),
		string('token'),
		timestamp('created_at').default(new String('CURRENT_TIMESTAMP'))
	]));
};

/**
 * Drop password resets table.
 *
 * @param {Object} db
 * @returns
 */
exports.down = (db) =>  db.dropTable('password_resets');

let dbm, type, seed;

exports.setup = (options, seedLink) => {
	dbm = options.dbmigrate;
	type = dbm.dataType;
	seed = seedLink;
};

exports._meta = {
	version: 1
};
