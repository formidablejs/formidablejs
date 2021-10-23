import { Kernel } from '@formidablejs/framework'
import app from './bootstrap/main'
import request from 'supertest'

# --------------------------------------------------------------------------
# Application Instance
# --------------------------------------------------------------------------
#
# Initiate the application with the HTTP Kernel module then return the
# instance.

const Application = app.initiate(app.make(Kernel), true)

# --------------------------------------------------------------------------
# Module Exports for Tests and the CLI
# --------------------------------------------------------------------------
#
# This is where you can export modules that you want to test or use in the
# craftsman CLI.
#
# By default, the server is exported as application, making it easy to run
# end-2-end tests or access any application core features from the CLI.

export {
	Application
	request
}
