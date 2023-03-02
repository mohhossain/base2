class TagsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def show 
        tag = Tag.find_by(name: '#'+params[:name])
        render json: tag.questions
    end
end
