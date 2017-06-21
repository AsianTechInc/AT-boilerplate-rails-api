class UserOperations::Update < ApplicationOperation
  attr_reader :email, :password, :id
  include Users::Parameter

  def initialize(params)
    super(params)
    @email = params[:email]
    @password = params[:password]
    @id = params[:id]
  end

  def call
    form = UserContracts::Update.new(
      email: email,
      password: password)
    form.valid!
    update_user!
    user
  end

  private

  def user
    User.find(id)
  end

  def update_user!
    user.update!(user_params)
  end
end
