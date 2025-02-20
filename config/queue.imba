export default {

	# --------------------------------------------------------------------------
	# Default Queue Connection Name
	# --------------------------------------------------------------------------
	#
	# Here you may specify which of the queue connections below you wish
	# to use as your default connection for all queue workers.

	default: env('QUEUE_CONNECTION', 'sync')

	# --------------------------------------------------------------------------
	# Queue Connections
	# --------------------------------------------------------------------------
	#
	# Here are each of the queue connections setup for your application.
	# Feel free to add more.
	#
	# Drivers: "sync", "redis"

	connections: {
		sync: {
			driver: 'sync'
			queue: 'sync'
		}

		redis: {
			driver: 'redis'
			queue: 'default'
			redis: env('REDIS_QUEUE', 'queue')
			timeout: 3000
			retries: 3
		}
	}

}
