class UserOperations::Destroy < ApplicationOperation
  attr_reader :user
  include Users::Parameter

  def initialize(params)
    @user = User.find(params[:id])
  end

  def call
    user.destroy
  end
end
