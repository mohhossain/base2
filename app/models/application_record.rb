class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # rescue errors for unprocessable entity
  # rescue_from ActiveRecord::RecordInvalid, with: :handle_invalid_record
  # rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  # private

  # def handle_not_found(e)
  #   render json: { error: e.message }, status: :not_found
  # end

  # def handle_invalid_record(e)
  #   render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
  # end 
end
