import { Kernel } from '@formidablejs/framework'
import { app } from './main'

export default app.initiate(app.make(Kernel), true)
