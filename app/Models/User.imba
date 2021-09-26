import { Model } from '@formidablejs/framework'

export default class User < Model

	# The table associated with the model.
	#
	# @type {String}

	get tableName
		'users'

	# The attributes that should be hidden.
	#
	# @type {String[]}

	get hidden
		[
			'password'
			'remember_token'
		]
