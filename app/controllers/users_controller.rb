class UsersController < ApplicationController
def create
    @user = User.new(user_params)
    if @user.save
      if params[:profile_picture].present?
        @user.profile_picture.attach(params[:profile_picture])
        render json: @user.to_json(except: :profile_picture)
      end
    else
      render :new
    end
  end

  private
    def user_params
      params.permit(:username, :email, :profile_picture, :password_digest)
    end
end
