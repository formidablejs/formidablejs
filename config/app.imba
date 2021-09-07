import { env, toBoolean } from '@formidablejs/helpers'

export default {

	# --------------------------------------------------------------------------
	# Application Name
	# --------------------------------------------------------------------------
	#
	# This value is the name of your application. This value is used when the
	# framework needs to place the application's name in a notification or
	# any other location as required by the application or its packages.

	name: env 'APP_NAME', 'Formidable'

	# --------------------------------------------------------------------------
	# Application Environment
	# --------------------------------------------------------------------------
	#
	# This value determines the "environment" your application is currently
	# running in. This may determine how you prefer to configure various
	# services the application utilizes. Set this in your ".env" file.

	env: env 'APP_ENV', 'production'

	# --------------------------------------------------------------------------
	# Application Debug Mode
	# --------------------------------------------------------------------------
	#
	# When your application is in debug mode, detailed error messages with
	# stack traces will be shown on every error that occurs within your
	# application. If disabled, a simple generic error page is shown.

	debug: toBoolean(env 'APP_DEBUG', false)

	# --------------------------------------------------------------------------
	# Application URL
	# --------------------------------------------------------------------------
	#
	# This URL is used by the console to properly generate URLs when using
	# the `app.url` helper method. Please set this to the root of your
	# application.

	url: env 'APP_URL', 'http://localhost:3000'

	client_url: env('CLIENT_URL')

	# --------------------------------------------------------------------------
	# Application Timezone
	# --------------------------------------------------------------------------
	#
	# Here you may specify the default timezone for your application.

	timezone: 'UTC'

	# --------------------------------------------------------------------------
	# Application Locale Configuration
	# --------------------------------------------------------------------------
	#
	# The application locale determines the default locale that will be used
	# by the translation service provider. You are free to set this value
	# to any of the locales which will be supported by the application.

	locale: 'en'

	# --------------------------------------------------------------------------
	# Application Fallback Locale
	# --------------------------------------------------------------------------
	#
	# The fallback locale determines the locale to use when the current one
	# is not available. You may change the value to correspond to any of
	# the language folders that are provided through your application.

	fallback_locale: 'en'

	# --------------------------------------------------------------------------
	# Secret Key
	# --------------------------------------------------------------------------
	#
	# This key is used to encrypt and decrypt various values. Out of the box
	# Harness uses this key to encrypt or decrypt cookies and the cache.

	key: env 'APP_KEY'

	# --------------------------------------------------------------------------
	# Autoloaded Application Resolvers
	# --------------------------------------------------------------------------
	#
	# These resolvers are automatically loaed on the request to your application,
	# they extend the functionality of your application.

	resolvers: [
		require('@formidablejs/framework').HashServiceResolver
		require('@formidablejs/framework').RedisServiceResolver
		require('@formidablejs/framework').SessionMemoryStoreServiceResolver
		require('@formidablejs/framework').SessionFileStoreServiceResolver
		require('@formidablejs/framework').LanguageServiceResolver
		require('@formidablejs/framework').MailServiceResolver
		require('@formidablejs/framework').PersonalAccessTokenServiceResolver
		require('@formidablejs/framework').AuthenticationServiceResolver
		require('@formidablejs/framework').CsrfServiceResolver

		# application resolvers...
		require('../app/Resolvers/AppServiceResolver')
		require('../app/Resolvers/RouterServiceResolver')
		require('../app/Resolvers/ValidationServiceResolver')
	]

}
