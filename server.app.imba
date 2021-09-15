import { Kernel } from '@formidablejs/framework'
import app from './bootstrap/main'
import request from 'supertest'

# --------------------------------------------------------------------------
# Module Exports for Tests
# --------------------------------------------------------------------------
#
# This is where you can export modules that you want to test.
# By default, the server is exported as application, making it easy to run
# end-2-end tests.
#
# To get started, simply import any module, and export it below.

exports.Application = app.initiate(app.make(Kernel), true)
exports.request = request
