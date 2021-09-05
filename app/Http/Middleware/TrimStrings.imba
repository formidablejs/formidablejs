import { TrimStrings as Middleware } from '@formidablejs/framework'

export default class TrimStrings < Middleware

	get except
		[
			'password'
			'password_confirmation'
		]
