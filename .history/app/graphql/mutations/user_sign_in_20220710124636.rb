module Mutations
  class UserSignIn < BaseMutation


    argument :credentials, Types::CredentialsInputType, required: false

    field :token, String, null: true
    field :user, Types::UserType, null: true

  end

  def resolve(credentials: nil)
    # basic validation
    # return unless credentials

    # user = User.find_by email: credentials[:email]

    # # ensures we have the correct user
    # return unless user
    # return unless user.authenticate(credentials[:password])

    # use Ruby on Rails - ActiveSupport::MessageEncryptor, to build a token
    # crypt = ActiveSupport::MessageEncryptor.new(Rails.application.credentials.secret_key_base.byteslice(0..31))
    # token = crypt.encrypt_and_sign("user-id:#{ user.id }")

    { user: nil, token: 'haha token' }
  end
end
