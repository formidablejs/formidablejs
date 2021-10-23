import { Request } from '@formidablejs/framework'
import { Route } from '@formidablejs/framework'

Route.get('/', do(request\Request)
	request.translate 'index.hello', 'Hello World'
).name('hello').middleware(['lang'])
