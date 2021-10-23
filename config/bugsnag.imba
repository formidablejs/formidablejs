import { helpers } from '@formidablejs/framework'

export default {

	# --------------------------------------------------------------------------
	# API Key
	# --------------------------------------------------------------------------
	#
	# You can find your API key on your Bugsnag dashboard.
	#
	# This api key points the Bugsnag notifier to the project in your account
	# which should receive your application's uncaught exceptions.

	api_key: helpers.env('BUGSNAG_API_KEY', '')

	# --------------------------------------------------------------------------
	# App Type
	# --------------------------------------------------------------------------
	#
	# Set the type of application executing the current code.

	app_type: helpers.env('BUGSNAG_APP_TYPE')

	# --------------------------------------------------------------------------
	# App Version
	# --------------------------------------------------------------------------
	#
	# Set the version of application executing the current code.

	app_version: helpers.env('BUGSNAG_APP_VERSION')

	# --------------------------------------------------------------------------
	# Notify Endpoint
	# --------------------------------------------------------------------------
	#
	# Set what server the Bugsnag notifier should send errors to. By default
	# this is set to 'https://notify.bugsnag.com', but for Bugsnag Enterprise
	# this should be the URL to your Bugsnag instance.

	endpoint: helpers.env('BUGSNAG_ENDPOINT')

	# --------------------------------------------------------------------------
	# Hostname
	# --------------------------------------------------------------------------
	#
	# You can set the hostname of your server to something specific for you to
	# identify it by if needed.

	hostname: helpers.env('BUGSNAG_HOSTNAME')

	# --------------------------------------------------------------------------
	# Project Root
	# --------------------------------------------------------------------------
	#
	# Bugsnag marks stacktrace lines as in-project if they come from files
	# inside your “project root”. You can set this here.
	#
	# If this is not set, we will automatically try to detect it.

	project_root: helpers.env('BUGSNAG_PROJECT_ROOT')

	# --------------------------------------------------------------------------
	# Query
	# --------------------------------------------------------------------------
	#
	# Enable this if you'd like us to automatically record all queries executed
	# under the "QUERY" tab.

	query: helpers.env('BUGSNAG_QUERY', true)

	# --------------------------------------------------------------------------
	# Bindings
	# --------------------------------------------------------------------------
	#
	# Enable this if you'd like us to include the query bindings in our "QUERY"
	# tab.

	bindings: helpers.env('BUGSNAG_QUERY_BINDINGS', false)

	# --------------------------------------------------------------------------
	# Send Code
	# --------------------------------------------------------------------------
	#
	# Bugsnag automatically sends a small snippet of the code that crashed to
	# help you diagnose even faster from within your dashboard. If you don’t
	# want to send this snippet, then set this to false.

	send_code: helpers.env('BUGSNAG_SEND_CODE', true)

	# --------------------------------------------------------------------------
	# Send Code
	# --------------------------------------------------------------------------
	#
	# Enable this if you'd like us to enable our default set of notification
	# callbacks. These add things like the cookie information and session
	# details to the error to be sent to Bugsnag.
	#
	# If you'd like to add your own callbacks, you can call the
	# Bugsnag.registerCallback method from the boot method of your app
	# service resolver.

	callbacks: helpers.env('BUGSNAG_CALLBACKS', true)

	# --------------------------------------------------------------------------
	# Release Stage
	# --------------------------------------------------------------------------
	#
	# Set the release stage to use when sending notifications to Bugsnag.
	#
	# Leaving this unset will default to using the application environment.

	release_stage: helpers.env('BUGSNAG_RELEASE_STAGE')

	# --------------------------------------------------------------------------
	# Notify Release Stages
	# --------------------------------------------------------------------------
	#
	# Set which release stages should send notifications to Bugsnag.

	notify_release_stages: helpers.isEmpty(helpers.env('BUGSNAG_NOTIFY_RELEASE_STAGES')) ? null : helpers.env('BUGSNAG_NOTIFY_RELEASE_STAGES').replace(/\s/g, '').split(',')

	# --------------------------------------------------------------------------
	# User
	# --------------------------------------------------------------------------
	#
	# Enable this if you'd like us to set the current user logged in via
	# Formidable's authentication system.

	user: helpers.env('BUGSNAG_USER', true)

	# --------------------------------------------------------------------------
	# Redacted Keys
	# --------------------------------------------------------------------------
	#
	# An array of metadata keys that should be redacted.

	redacted_keys: helpers.isEmpty(helpers.env('BUGSNAG_REDACTED_KEYS')) ? null : helpers.env('BUGSNAG_REDACTED_KEYS').split(',')

}
