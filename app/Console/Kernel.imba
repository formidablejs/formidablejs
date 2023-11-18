import { ConsoleKernel } from '@formidablejs/framework'
import { Log } from '@formidablejs/logger'
import { Queueable } from '@formidablejs/queues'
import type { ICommand } from '@formidablejs/framework'
import type { Schedule } from '@formidablejs/scheduler'

export class Kernel < ConsoleKernel

	get registered\Array<ICommand>
		[

		]

	get jobs\Array<typeof Queueable>
		[

		]

	def schedule schedule\Schedule
		schedule.call(do
			Log.info 'Hello World'
		).everyMinute!
