type User = {
    id: number
    name: string
    email: string
    password: string
    remember_token?: string

    /**
     * User's email verification timestamp.
     *
     * @example
     * new Date(request.user().email_verified_at)
     */
    email_verified_at?: string

    /**
     * User's last updated at timestamp.
     *
     * @example
     * new Date(request.user().updated_at)
     */
    updated_at: string

    /**
     * User's creation timestamp.
     *
     * @example
     * new Date(request.user().created_at)
     */
    created_at: string
}
