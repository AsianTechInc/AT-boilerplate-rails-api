module APIErrorHandler
  extend ActiveSupport::Concern

  included do
    rescue_from BadRequestError do |e|
      error_response(e.errors, :bad_request)
    end

    rescue_from ActiveRecord::RecordNotFound do |e|
      error_response(:not_found, :not_found)
    end

    rescue_from NoMethodError do |e|
      Rails.logger.error("Internal server error occurred.")
      Rails.logger.error("  type: #{e.class.name}")
      Rails.logger.error("  message: #{e.message}")
      Rails.logger.error("  backtrace:")
      Rails.logger.error("    " + e.backtrace.join("\n    "))
      error_response('internal_server_error', :internal_server_error)
    end

  end

  private

  def error_response(errors, status)
    render json: {errors: errors}, status: status
  end
end
