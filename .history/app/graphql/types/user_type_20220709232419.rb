# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: true
    field :name, String, null: false
    field :email, String, null: false
    field :password_digest, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end