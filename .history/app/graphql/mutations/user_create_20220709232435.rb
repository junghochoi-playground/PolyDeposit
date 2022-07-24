# frozen_string_literal: true

module Mutations
  class UserCreate < BaseMutation
    description "Creates a new user"

    argument :name, String, required: true
    argument :credentials, Types::CredentialsInputType, required: false

    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    type Types::UserType

    def resolve(name:, credentials:)
      puts name
      puts credentials.email
      puts credentials.password
      user = User.new(
        name: name,
        email: credentials.email,
        password_digest: credentials.password,
      )

      puts user

      if user.save
        # Successful creation, return the created object with no errors
        {
          user: user,
          errors: [],
        }
      else
        # Failed save, return the errors to the client
        {
          user: nil,
          errors: user.errors.full_messages,
        }
      end
    end
  end
end
