module Mutations
  class UserSignIn < BaseMutation


    argument :credentials, Types::CredentialsInputType, required: false

    field :token, String, null: true
    field :user, Types::UserType, null: true

  end

  def resolve(credentials: nil)

    return unless credentials

    user = User.find_by(email: credentials.email)
    
    return unless user
    return unless user.authenticate(credentials.password)

    crypt = ActiveSupport::MessageEncryptor.new(Rails.application.credentials.secret_key_base.byteslice(0..31))
    token = crypt.encrypt_and_sign("user-id:#{ user.id }")

    { user: user, token: token }

  end
end
