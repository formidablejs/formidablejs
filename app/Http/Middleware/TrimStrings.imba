import { TrimStrings as Middleware } from '@formidablejs/framework'

export class TrimStrings < Middleware

	get except
		[
			'password'
			'password_confirmation'
		]
