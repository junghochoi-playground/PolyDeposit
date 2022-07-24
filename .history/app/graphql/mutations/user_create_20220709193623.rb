# frozen_string_literal: true

module Mutations
  class UserCreate < BaseMutation
    description "Creates a new user"


    argument :name, String, required: true
    argument :auth_provider, Types::CredentialsInputType, required: false


  end
end
