import { @context } from '@formidablejs/framework'
import { Model } from '@formidablejs/framework'

@context
export class User < Model

	# The name used to represent the model in the craftsman context.
	#
	# @type {String}

	static get context
		'User'

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
