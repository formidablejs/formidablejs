import { AuthService as Auth, ServiceResolver, Route } from '@formidablejs/framework'

export default class RouterServiceResolver < ServiceResolver

	def boot
		Route.group { middleware: 'jwt' }, do
			Auth.routes!

			require '../../routes/api'

		self
