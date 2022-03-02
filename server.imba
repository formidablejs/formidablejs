import { Kernel } from '@formidablejs/framework'
import { app } from './bootstrap/main'

app.initiate(app.make(Kernel))
