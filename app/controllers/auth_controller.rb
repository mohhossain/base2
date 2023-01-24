class AuthController < ApplicationController

    skip_before_action :authorized, only: [:login]

    def login 
        user = User.find_by!(username: user_params[:username])
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
end
