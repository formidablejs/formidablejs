import { env, slug } from '@formidablejs/helpers'

export default {

	# --------------------------------------------------------------------------
	# Default Database Connection Name
	# --------------------------------------------------------------------------
	#
	# Here you may specify which of the database connections below you wish
	# to use as your default connection for all database work. Of course
	# you may use many connections at once using the Database library.

	default: env 'DB_CONNECTION', 'mysql'

	# --------------------------------------------------------------------------
	# Database Connections
	# --------------------------------------------------------------------------
	#
	# Here are each of the database connections setup for your application.
	# Feel free to add more.

	connections: {
		sqlite: {
			driver: 'sqlite3'
			url: env 'DATABASE_URL'
			database: env 'DB_DATABASE'
		}

		mysql: {
			driver: 'mysql'
			url: env 'DATABASE_URL'
			host: env 'DB_HOST', '127.0.0.1'
			port: env 'DB_PORT', '3306'
			database: env 'DB_DATABASE', ''
			username: env 'DB_USERNAME', ''
			password: env 'DB_PASSWORD', ''
			charset: 'utf8mb4'
		}
	}

	# --------------------------------------------------------------------------
	# Migration Repository Table
	# --------------------------------------------------------------------------
	#
	# This table keeps track of all the migrations that have already run for
	# your application. Using this information, we can determine which of
	# the migrations on disk haven't actually been run in the database.

	migrations: 'migrations'

	# --------------------------------------------------------------------------
	# Redis Databases
	# --------------------------------------------------------------------------
	#
	# You can configure your redis databases here.

	redis: {
		options: {
			prefix: env 'REDIS_PREFIX', slug(env('APP_NAME', 'formidable'), '_') + '_database_'
		}

		default: {
			url: env 'REDIS_URL'
			host: env 'REDIS_HOST', '127.0.0.1'
			password: env 'REDIS_PASSWORD', null
			port: env 'REDIS_PORT', '6379'
			database: env 'REDIS_DB', '0'
		}

		cache: {
			url: env 'REDIS_URL'
			host: env 'REDIS_HOST', '127.0.0.1'
			password: env 'REDIS_PASSWORD', null
			port: env 'REDIS_PORT', '6379'
			database: env 'REDIS_CACHE_DB', '1'
		}
	}

}
