import { Repository } from '@formidablejs/framework'

export class UserRepository < Repository

	# The table associated with the repsitory.
	get tableName\string
		'users'

	# Context reference.
	static get context\string
		'UserRepository'
