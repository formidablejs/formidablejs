import { app } from './app'
import { ConfigRepository } from '@formidablejs/framework'
import { ExceptionHandler } from '@formidablejs/framework'
import { Kernel as HttpKernel } from '@formidablejs/framework'
import { Language } from '@formidablejs/framework'
import { ConsoleKernel } from '@formidablejs/framework'
import { Kernel as AppConsole } from '../app/Console/Kernel'
import { Config } from '../config/index'
import { Handler } from '../app/Exceptions/Handler'
import { Kernel } from '../app/Http/Kernel'

app
	.bind(HttpKernel, Kernel)
	.bind(ConfigRepository, Config)
	.bind(Language, Language)
	.bind(ExceptionHandler, Handler)
	.bind(ConsoleKernel, AppConsole)
	.prepare!

export { app }
