import {
	Application
	ConfigRepository
	ExceptionHandler
	Kernel as HttpKernel
	Language
} from '@formidablejs/framework'

import { Config } from '../config'
import { Handler } from '../app/Exceptions/Handler'
import { Kernel } from '../app/Http/Kernel'
import path from 'path'

const app = new Application path.resolve './'

app
	.bind(HttpKernel, Kernel)
	.bind(ConfigRepository, Config)
	.bind(Language, Language)
	.bind(ExceptionHandler, Handler)

export default app.prepare!
