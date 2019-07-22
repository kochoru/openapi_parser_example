class ApplicationController < ActionController::API
  rescue_from StandardError, with: :not_found

  def not_found
    render json: {code: '404', message: 'Not Found'}, status: 404
  end
end
