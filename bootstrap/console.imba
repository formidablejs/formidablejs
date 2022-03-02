import { Kernel } from '@formidablejs/framework'
import { ConsoleKernel } from '@formidablejs/framework'
import { app } from './main'

def main
	(await app.initiate(app.make(Kernel), true))
		.craftsman(app.make(ConsoleKernel))
		.run!

main!
