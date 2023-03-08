import { ConsoleKernel } from '@formidablejs/framework'
import { Log } from '@formidablejs/logger'
import type { ICommand } from '@formidablejs/framework'
import type { Schedule } from '@formidablejs/scheduler'

export class Kernel < ConsoleKernel

	get registered\Array<ICommand>
		[

		]

	def schedule schedule\Schedule
		schedule.call(do
			Log.info 'Hello World'
		).everyMinute!
