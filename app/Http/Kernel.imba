import { Authenticate } from '@formidablejs/framework'
import { HasCsrfToken } from '@formidablejs/framework'
import { HasEncryptionKey } from '@formidablejs/framework'
import { Kernel as HttpKernel } from '@formidablejs/framework'
import { ValidateSignature } from '@formidablejs/framework'
import { AcceptLanguage } from './Middleware/AcceptLanguage'
import { ConvertEmptyStringsToNull } from './Middleware/ConvertEmptyStringsToNull'
import { ErrorIfAuthenticated } from './Middleware/ErrorIfAuthenticated'
import { TrimStrings } from './Middleware/TrimStrings'
import { VerifyCsrfToken } from './Middleware/VerifyCsrfToken'

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
