import { ConvertEmptyStringsToNull as Middleware } from '@formidablejs/framework'

export class ConvertEmptyStringsToNull < Middleware

	get except
		[
			'password'
			'password_confirmation'
		]
