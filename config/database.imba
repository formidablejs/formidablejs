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
			filename: env 'DATABASE_URL'
		}

		mysql: {
			driver: 'mysql2'
			url: env 'DATABASE_URL'
			host: env 'DB_HOST', '127.0.0.1'
			port: env 'DB_PORT', '3306'
			user: env 'DB_USER', ''
			database: env 'DB_DATABASE', ''
			password: env 'DB_PASSWORD', ''
			charset: 'utf8mb4'
		}

		pgsql: {
			driver: 'pg'
			url: env 'DATABASE_URL'
			host: env 'DB_HOST', '127.0.0.1'
			port: env 'DB_PORT', '5432'
			user: env 'DB_USER', ''
			database: env 'DB_DATABASE', ''
			password: env 'DB_PASSWORD', ''
			charset: 'utf8'
		}

		mssql: {
			driver: 'tedious'
			url: env 'DATABASE_URL'
			host: env 'DB_HOST', '127.0.0.1'
			port: env 'DB_PORT', '5432'
			user: env 'DB_USER', ''
			database: env 'DB_DATABASE', ''
			password: env 'DB_PASSWORD', ''
			charset: 'utf8'
		}
	}

	# --------------------------------------------------------------------------
	# Migration Settings
	# --------------------------------------------------------------------------
	#
	# Here you can configure database migration settings.
	#
	# The "tableName" is the name of the table that will store the migration
	# state.
	# The "directory" is the location where migrations files are stored.

	migrations: {
		tableName: 'migrations'
		directory: './database/migrations'
	}

	# --------------------------------------------------------------------------
	# useNullAsDefault
	# --------------------------------------------------------------------------
	#
	# Set useNullAsDefault to true when using sqlite as the default database
	# driver to prevent knex from throwing a warning.
	#
	# See: https://github.com/formidablejs/framework/issues/61

	useNullAsDefault: null

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

		queue: {
			url: env 'REDIS_URL'
			host: env 'REDIS_HOST', '127.0.0.1'
			password: env 'REDIS_PASSWORD', null
			port: env 'REDIS_PORT', '6379'
			database: env 'REDIS_CACHE_DB', '2'
		}
	}

}
