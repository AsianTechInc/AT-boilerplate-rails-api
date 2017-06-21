class UserOperations::Show < ApplicationOperation
  attr_reader :user
  include Users::Parameter

  def initialize(params)
    @user = User.find(params[:id])
  end

  def call
    user
  end
end
