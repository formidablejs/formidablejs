const { schema, id, string, integer, text, timestamp, timestamps } = require('@formidablejs/schema-builder');

/**
 * Create personal access tokens table.
 *
 * @param {Object} db
 * @returns
 */
exports.up = (db) => {
	return db.createTable('personal_access_tokens', schema([
		id(),
		string('tokenable_type'),
		integer('tokenable_id'),
		string('name'),
		text('abilities').nullable(),
		timestamp('last_used_at').nullable(),
		timestamps(),
	]));
};

/**
 * Drop personal access tokens table.
 *
 * @param {Object} db
 * @returns
 */
exports.down = (db) => db.dropTable('personal_access_tokens');

let dbm, type, seed;

exports.setup = (options, seedLink) => {
	dbm = options.dbmigrate;
	type = dbm.dataType;
	seed = seedLink;
};

exports._meta = {
	version: 1
};
