# frozen_string_literal: true

module Mutations
  class UserCreate < BaseMutation
    description "Creates a new user"


    argument :name, String, required: true
    argument :credentials, Types::CredentialsInputType, required: false

    type Types::UserType


    def resolve(name: nil, credentials: nil)
      User.create!(
        name: name,
        email: credentials.email,
        password: credentials.password
      )
    end


  end
end
