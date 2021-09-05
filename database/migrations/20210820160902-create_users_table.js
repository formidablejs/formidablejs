const { schema, id, string, timestamp, timestamps } = require('@formidablejs/schema-builder');

/**
 * Create users table.
 *
 * @param {Object} db
 * @returns
 */
exports.up = (db) => {
	return db.createTable('users', schema([
		id(),
		string('name'),
		string('email'),
		string('password'),
		timestamp('email_verified_at').nullable(),
		timestamps(),
	]));
};

/**
 * Drop users table.
 *
 * @param {Object} db
 * @returns
 */
exports.down = (db) => db.dropTable('users');

let dbm, type, seed;

exports.setup = (options, seedLink) => {
	dbm = options.dbmigrate;
	type = dbm.dataType;
	seed = seedLink;
};

exports._meta = {
	version: 1
};
