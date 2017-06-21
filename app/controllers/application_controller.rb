class ApplicationController < ActionController::API
  include APIErrorHandler
  include Pundit
end
