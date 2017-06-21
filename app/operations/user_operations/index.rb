class UserOperations::Index < ApplicationOperation

  def call
    User.all
  end
end
