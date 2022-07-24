module Types
  class MutationType < Types::BaseObject
    field :user_sign_in, mutation: Mutations::UserSignIn
    # field :sign_in_user, mutation: Mutations::SignInUser
    field :user_create, mutation: Mutations::UserCreate


    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World this"
    end


  

  end
end
