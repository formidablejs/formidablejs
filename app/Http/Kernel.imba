import {
	Authenticate
	HasCsrfToken
	HasEncryptionKey
	Kernel as HttpKernel
	ValidateSignature
} from '@formidablejs/framework'

import AcceptLanguage from './Middleware/AcceptLanguage'
import ConvertEmptyStringsToNull from './Middleware/ConvertEmptyStringsToNull'
import ErrorIfAuthenticated from './Middleware/ErrorIfAuthenticated'
import TrimStrings from './Middleware/TrimStrings'
import VerifyCsrfToken from './Middleware/VerifyCsrfToken'

export class Kernel < HttpKernel

	get middleware
		[
			HasEncryptionKey
			TrimStrings
			ConvertEmptyStringsToNull
		]

	get middlewareGroups
		{
			jwt: [

			]

			session: [
				HasCsrfToken
				VerifyCsrfToken
			]
		}

	get routeMiddleware
		{
			'auth': Authenticate
			'guest': ErrorIfAuthenticated
			'lang': AcceptLanguage
			'signed': ValidateSignature
		}
