import { Model } from '@formidablejs/framework'

export default class User < Model

	# The attributes that should be hidden.
	#
	# @type {string[]}

	get hidden
		[
			'password'
		]
