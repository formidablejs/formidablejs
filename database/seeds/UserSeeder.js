const { Database, Hash } = require("@formidablejs/framework");
const { faker } = require("@faker-js/faker");

/** @param {Database} DB */
exports.seed = async (DB) => {
	/** delete all existing users. */
	await DB.table('users').delete();

	/** a list of all users. */
	const users = [];

	/** generate generic password. */
	const password = await Hash.make("password");

	/** create a random user. */
	const createRandomUser = () => {
		return {
			name: faker.person.fullName(),
			email: faker.internet.email(),
			password,
		};
	};

	/** add 10 users. */
	Array.from({ length: 10 }).forEach(() => {
		users.push(createRandomUser());
	});

	/** inserts seed entries. */
	return await DB.table("users").insert(users);
};
