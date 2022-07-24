# frozen_string_literal: true

module Types
  class CredentialsInputType < Types::BaseInputObject
    argument :email, Types::StringType, required: true
    argument :password, Types::StringType, required: true
  end
end
