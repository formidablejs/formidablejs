import { AuthenticationServiceResolver } from '@formidablejs/framework'
import { BugsnagServiceResolver } from '@formidablejs/bugsnag-plugin'
import { CorsServiceResolver } from '@formidablejs/framework'
import { CookieServiceResolver } from '@formidablejs/framework'
import { HashServiceResolver } from '@formidablejs/framework'
import { LanguageServiceResolver } from '@formidablejs/framework'
import { LoggerServiceResolver } from '@formidablejs/logger'
import { MailServiceResolver } from '@formidablejs/mailer'
import { MultipartServiceResolver } from '@formidablejs/framework'
import { MaintenanceServiceResolver } from '@formidablejs/framework'
import { PersonalAccessTokenServiceResolver } from '@formidablejs/framework'
import { RedisServiceResolver } from '@formidablejs/framework'
import { SchedulerServiceResolver } from '@formidablejs/scheduler'
import { SessionFileStoreServiceResolver } from '@formidablejs/framework'
import { SessionMemoryStoreServiceResolver } from '@formidablejs/framework'
import { SessionServiceResolver } from '@formidablejs/framework'
import { StaticContentServiceResolver } from '@formidablejs/framework'
import { TypeScriptPortsServiceResolver } from '@formidablejs/ts-ports'
import { QueueServiceResolver } from '@formidablejs/queues'
import { AppServiceResolver } from '../app/Resolvers/AppServiceResolver'
import { RouterServiceResolver } from '../app/Resolvers/RouterServiceResolver'
import { ValidationServiceResolver } from '../app/Resolvers/ValidationServiceResolver'

# --------------------------------------------------------------------------
# Autoloaded Application Resolvers
# --------------------------------------------------------------------------
#
# These resolvers are automatically loaed on the request to your application,
# they extend the functionality of your application.

export default [
	# Formidable Framework Service Resolvers...
	BugsnagServiceResolver
	SchedulerServiceResolver
	LoggerServiceResolver
	RedisServiceResolver
	QueueServiceResolver
	MultipartServiceResolver
	StaticContentServiceResolver
	CookieServiceResolver
	SessionMemoryStoreServiceResolver
	SessionFileStoreServiceResolver
	SessionServiceResolver
	HashServiceResolver
	LanguageServiceResolver
	MailServiceResolver
	PersonalAccessTokenServiceResolver
	AuthenticationServiceResolver
	CorsServiceResolver
	MaintenanceServiceResolver
	TypeScriptPortsServiceResolver

	# Package Service Resolvers...

	# Application Service Resolvers...
	AppServiceResolver
	RouterServiceResolver
	ValidationServiceResolver
]
