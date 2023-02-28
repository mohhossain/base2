class QuestionsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]

  def index
    # send response ordered by most recent
    questions = Question.all.order(created_at: :desc)
    render json: questions
  end

  def show
    question = Question.find(params[:id])
    render json: question
  end

  def create
    question = Question.new(title: question_params[:title], content: question_params[:content], user_id: current_user.id)
    if question.save!
      render json: question
    end
  end

  private 

  # define question_params

  def question_params
    params.permit(:title, :content)
  end
  
end
