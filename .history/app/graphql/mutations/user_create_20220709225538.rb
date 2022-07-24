# frozen_string_literal: true

module Mutations
  class UserCreate < BaseMutation
    description "Creates a new user"

    argument :name, String, required: true
    argument :credentials, Types::CredentialsInputType, required: false

    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    type Types::UserType

    def resolve(name: nil, credentials: nil)
      new_user = User.new(
        name: name,
        email: credentials.email,
        password: credentials.password,
      )

      if new_user.save
        # Successful creation, return the created object with no errors
        {
          user: new_user,
          errors: [],
        }
    end
  end
end
