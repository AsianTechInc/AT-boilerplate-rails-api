class UserOperations::Create < ApplicationOperation
  attr_reader :email, :password
  include Users::Parameter

  def initialize(params)
    super(params)
    @email = params[:email]
    @password = params[:password]
  end

  def call
    form = UserContracts::Create.new(
      email: email,
      password: password)
    form.valid!
    create_user!
  end

  private

  def create_user!
    User.create!(user_params)
    User.last
  end
end
