import { Kernel } from '@formidablejs/framework'
import app from './bootstrap/app'

app.initiate(app.make(Kernel))
