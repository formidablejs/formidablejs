const { Application, request } = require('../bootstrap/compiled/server.cli');

describe('Application (e2e)', () => {
	let app;

	beforeAll(async () => {
		await Application.then((formidable) => {
			(app = formidable.fastify()).ready();
		});
	});

	afterAll(async () => await app.close());

	it('/ (GET: Hello World)', () => {
		return request(app.server)
			.get('/')
			.set('Accept-Language', 'en')
			.expect(200)
			.expect('Hello World');
	});

	it('/ (GET: Hola Mundo)', () => {
		return request(app.server)
			.get('/')
			.set('Accept-Language', 'es')
			.expect(200)
			.expect('Hola Mundo');
	});
})
