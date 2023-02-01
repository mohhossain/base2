class QuestionsController < ApplicationController
  def index
  end

  def show
  end

  def create
    question = Question.create!(question_params)
  end

  private 

  # define question_params

  def question_params
    params.permit(:title, :content, :user_id, :images)
  end
  
end
