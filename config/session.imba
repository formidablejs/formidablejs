import { helpers } from '@formidablejs/framework'

export default {

	# --------------------------------------------------------------------------
	# Default Session Driver
	# --------------------------------------------------------------------------
	#
	# This option controls the default session "driver" that will be used on
	# requests. By default, we will use the lightweight native driver but
	# you may specify any of the other wonderful drivers provided here.
	#
	# Supported: "memory", "file", "redis"
	#
	# See: "config > app.imba > resolvers"

	driver: 'memory'

	# --------------------------------------------------------------------------
	# Session Cookie Name
	# --------------------------------------------------------------------------
	#
	# The name of the session ID cookie to set in the response
	# (and read from in the request).

	cookie: helpers.env 'SESSION_COOKIE', helpers.slug( helpers.env('APP_NAME', 'formidable'), '_' ) + '_session'

	# --------------------------------------------------------------------------
	# Session Encryption
	# --------------------------------------------------------------------------
	#
	# This option allows you to easily specify that all of your session data
	# should be encrypted before it is stored. All encryption will be run
	# automatically by Formidable.

	encrypt: true,

	# --------------------------------------------------------------------------
	# Session Expiration
	# --------------------------------------------------------------------------
	#
	# Here you may specify the number of minutes that you wish the session
	# to be allowed to remain idle before it expires.

	lifetime: helpers.env 'SESSION_LIFETIME', helpers.ms '2 hours'

	# --------------------------------------------------------------------------
	# Session Cookie Path
	# --------------------------------------------------------------------------
	#
	# Specifies the value for the Path Set-Cookie. By default, this is set
	# to '/', which is the root path of the domain.

	path: '/'

	# --------------------------------------------------------------------------
	# Session Cookie Domain
	# --------------------------------------------------------------------------
	#
	# Specifies the value for the Domain Set-Cookie attribute. By default, no
	# domain is set, and most clients will consider the cookie to apply to
	# only the current domain.

	domain: helpers.env 'SESSION_DOMAIN', null

	# --------------------------------------------------------------------------
	# HTTPS Only Cookies
	# --------------------------------------------------------------------------
	#
	# Ensures the browser only sends the cookie over HTTPS.

	secure: helpers.env 'SESSION_SECURE_COOKIE', false

	# --------------------------------------------------------------------------
	# HTTP Access Only
	# --------------------------------------------------------------------------
	#
	# Ensures the cookie is sent only over HTTP(S), not client JavaScript,
	# helping to protect against cross-site scripting.

	http_only: helpers.env 'SESSION_HTTP_ONLY', false

	# --------------------------------------------------------------------------
	# Same-Site Cookies
	# --------------------------------------------------------------------------
	#
	# This option determines how your cookies behave when cross-site requests
	# take place, and can be used to mitigate CSRF attacks. By default, we
	# will set this value to "lax" since this is a secure default value.
	#
	# Supported: "lax", "strict", "none"

	same_site: helpers.env 'SESSION_SAME_SITE', 'none'

}
