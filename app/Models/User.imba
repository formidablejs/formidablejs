import { Model } from '@formidablejs/framework'

export default class User < Model

	# The table associated with the model.
	#
	# @type {string}

	get tableName
		'users'

	# The attributes that should be hidden.
	#
	# @type {string[]}

	get hidden
		[
			'password'
		]
