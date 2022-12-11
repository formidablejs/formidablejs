import { ConsoleKernel } from '@formidablejs/framework'
import type { Schedule } from '@formidablejs/scheduler'

export class Kernel < ConsoleKernel

	get registered
		[

		]

	def schedule schedule\Schedule
		# schedule.call(do
		# 	console.log 'Hello World'
		# ).everyMinute!