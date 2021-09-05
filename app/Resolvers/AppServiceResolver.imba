import { ServiceResolver, AuthService } from '@formidablejs/framework'
import VerifyEmail from '../Mail/VerifyEmail'
import ResetPassword from '../Mail/ResetPassword'

export default class AppServiceResolver < ServiceResolver

	def boot
		AuthService
			.verificationMailer(VerifyEmail)
			.resetPasswordMailer(ResetPassword)

		self
