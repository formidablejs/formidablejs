import { AuthService as Auth } from '@formidablejs/framework'
import { Route } from '@formidablejs/framework'
import { ServiceResolver } from '@formidablejs/framework'

export class RouterServiceResolver < ServiceResolver

	def boot
		Route.group { middleware: 'jwt' }, do
			Auth.routes!

			require '../../routes/api'

		self
