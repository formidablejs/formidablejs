const { Factory, Hash } = require('@formidablejs/framework');

exports.UserFactory = class UserFactory extends Factory {
    get password() {
		return undefined;
	}

    async definition() {
        return {
            name: this.faker().person.fullName(),
            email: this.faker().internet.email(),
            email_verified_at: now(),
            password: this.password ?? await Hash.make('password'),
            remember_token: encrypt(strRandom(80)),
        };
    }

    unverified() {
        return this.state({
            email_verified_at: null
        });
    }
}
