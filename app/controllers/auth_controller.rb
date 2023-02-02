class AuthController < ApplicationController
# rescue_from ActiveRecord::RecordInvalid, with: :handle_invalid_record
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    skip_before_action :authorized, only: [:login]

    def login 
        user = User.find_by!(email: user_params[:email])
        if user && user.authenticate(user_params[:password]) 
            @token = encode_token(user_id: user.id)
            render json: {user: UsersSerializer.new(user), token: @token}
        else
            render json: {error: "Username or password incorrect"}
        end
    end

    private

    def user_params
      params.permit(:username, :email, :password)
    end

    def record_not_found(e)
        render json: { errors: ["Invalid email or password"] }, status: :not_found
    end
end
