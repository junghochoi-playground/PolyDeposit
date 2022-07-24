# frozen_string_literal: true

module Types
  class CredentialsInputType < Types::BaseInputObject

    description "Credentials - Email and Password"
    
    argument :email, String, required: true
    argument :password, String, required: true
  end
end