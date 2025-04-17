import { AuthService as Auth } from '@formidablejs/framework'
import { ServiceResolver } from '@formidablejs/framework'
import { UserRepository } from '../Repositories/UserRepository'
# import { ResetPassword } from '../Mail/ResetPassword'
# import { VerifyEmail } from '../Mail/VerifyEmail'

export class AppServiceResolver < ServiceResolver

	def register
		app.context.inject UserRepository

	def boot
		# Auth.verificationMailer(VerifyEmail)
		# Auth.resetPasswordMailer(ResetPassword)

		# Auth.verificationMailerEvents({
		# 	onError: do(reason) console.error reason
		# })

		self
