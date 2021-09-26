import { FormRequest, Route } from '@formidablejs/framework'

Route.get('/', do(request\FormRequest)
	request.translate('index.hello', 'Hello World')
).name('hello').middleware(['lang'])
