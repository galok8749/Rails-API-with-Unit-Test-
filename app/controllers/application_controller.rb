class ApplicationController < ActionController::API
  # exception handling of not destroyed
  rescue_from ActiveRecord::RecordNotDestroyed, with: :not_destroyed

  private

  def not_destroyed(e)
    render json: { errors: e.record.errors }, status: :unprocessable_entity
  end
end
