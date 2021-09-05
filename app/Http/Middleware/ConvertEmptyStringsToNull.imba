import { ConvertEmptyStringsToNull as Middleware } from '@formidablejs/framework'

export default class ConvertEmptyStringsToNull < Middleware

	get except
		[
			'password'
			'password_confirmation'
		]
