import { helpers } from '@formidablejs/framework'

export default {

	# --------------------------------------------------------------------------
	# Default Hash Driver
	# --------------------------------------------------------------------------
	#
	# The default hash driver used by your application.
	#
	# Supported: "bcrypt", "argon2"

	driver: 'bcrypt',

	# --------------------------------------------------------------------------
	# Bcrypt Options
	# --------------------------------------------------------------------------
	#
	# Here you may specify the configuration options that should be used when
	# passwords are hashed using the Bcrypt algorithm. This will allow you to
	# control the amount of time it takes to hash the given password.

	bcrypt: {
		rounds: helpers.env 'BCRYPT_ROUNDS', 10
	}

	# --------------------------------------------------------------------------
	# Argon2 Options
	# --------------------------------------------------------------------------
	#
	# Here you may specify the configuration options that should be used when
	# passwords are hashed using the Argon algorithm. These will allow you to
	# control the amount of time it takes to hash the given password.

	argon2: {
		memoryCost: helpers.env 'ARGON2_MEMORY', 1024
		parallelism: helpers.env 'ARGON2_THREADS', 1
		timeCost: helpers.env 'ARGON2_TIME', 2
	}

}
