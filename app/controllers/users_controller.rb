class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    rescue_from ActiveRecord::RecordInvalid, with: :handle_invalid_record

    def create 
        puts user_params
        puts "---------------------------------"
        user = User.create!(user_params)
        @token = encode_token(user_id: user.id)
        render json: {
            user: UsersSerializer.new(user), 
            token: @token
        }, status: :created
    end

    def show 
            render json: {user: UsersSerializer.new(current_user)}
    end


    private

     def user_params
      params.permit(:username, :email, :profile_picture, :password)
    end

    def handle_invalid_record(e)
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end
end
