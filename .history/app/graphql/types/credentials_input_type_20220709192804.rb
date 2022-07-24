# frozen_string_literal: true

module Types
  class CredentialsInputType < Types::BaseInputObject
    argument :email, Types::StringType, required: false
    argument :password, Types::StringType, required: false
  end
end
