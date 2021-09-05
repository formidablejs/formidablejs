import { Route } from '@formidablejs/framework'

Route.get('/', do(request)
	request.translate 'index.hello', 'Hello World'
).name('hello').middleware(['lang'])
