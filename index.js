const { Application } = require('./dist/server.app');

const listen = async () => {
	await Application.then((app) => {
		app.fastify().listen(3000, (err, address) => {
			if (err) {
				console.error(err);
				process.exit(1);
			}

			console.log(`Server listening on ${address}`);
		});
	});
}

listen();
