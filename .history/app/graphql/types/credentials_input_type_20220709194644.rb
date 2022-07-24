# frozen_string_literal: true

module Types
  class CredentialsInputType < Types::BaseInputObject

    description "Attributes for creating or updating a blog post"
    
    argument :email, String, required: true
    argument :password, String, required: true
  end
end
