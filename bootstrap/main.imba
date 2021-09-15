import { app } from './app'

import {
	ConfigRepository
	ExceptionHandler
	Kernel as HttpKernel
	Language
} from '@formidablejs/framework'

import { Config } from '../config/index'
import { Handler } from '../app/Exceptions/Handler'
import { Kernel } from '../app/Http/Kernel'

app
	.bind(HttpKernel, Kernel)
	.bind(ConfigRepository, Config)
	.bind(Language, Language)
	.bind(ExceptionHandler, Handler)

export default app.prepare!
