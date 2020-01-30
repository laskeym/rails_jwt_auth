class ApplicationController < ActionController::API
  include JWTSessions::RailsAuthorization

  private

  def not_authorized
    render json: { error: "Not authorized" }, status: :unauthorized
  end
end
