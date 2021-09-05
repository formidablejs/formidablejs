export default {

	# --------------------------------------------------------------------------
	# CORS Options
	# --------------------------------------------------------------------------
	#
	# The allowed_methods and allowed_headers options are case-insensitive.
	#
	# If ['*'] is provided to allowed_methods, allowed_origins or allowed_headers
	# all methods / origins / headers are allowed.

	# You can enable CORS for 1 or multiple paths.
	# Example: ['/api']
	paths: [ '/*' ]

	# Matches the request method. '['*']' allows all methods.
	allowed_methods: ['POST']

	# Matches the request origin. '['*']' allows all origins. Wildcards can be used, eg `*.mydomain.com`
	allowed_origins: ['localhost:8080']

	# Sets the Access-Control-Allow-Headers response header. `['*']` allows all headers.
	allowed_headers: ['*']

	# Sets the Access-Control-Max-Age response header when > 0.
	max_age: 0

	# Sets the Access-Control-Allow-Credentials header.
	supports_credentials: false

}
