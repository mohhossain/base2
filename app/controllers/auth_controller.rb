class AuthController < ApplicationController
    def login 
        user = User.find_by!(user_params)
        if user && user.authenticated? 
            @token = encode_token(user_id: user.id)
            render json: {user: user, token: @token}
        else
            render json: {"Username or password incorrect"}
        end
    end
end
