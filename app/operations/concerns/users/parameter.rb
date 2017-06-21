module Users::Parameter
  extend ActiveSupport::Concern

  def user_params
    params.permit(:email, :password)
  end
end
