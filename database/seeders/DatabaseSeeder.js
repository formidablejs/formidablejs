const { Database } = require('@formidablejs/framework');
const { UserFactory } = require('../factories/UserFactory');

/** @param {Database} DB */
exports.seed = async (DB) => {
	await UserFactory.factory(5).create()
}
