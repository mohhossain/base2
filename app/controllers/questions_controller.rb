class QuestionsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]
  rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

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
    tag_names = params[:tags].join(",").split(",").map(&:strip).uniq
    tags = tag_names.map { |name| Tag.find_or_create_by(name: name) }
    question = Question.new(title: question_params[:title], content: question_params[:content], user_id: current_user.id)
    question.tags = tags
    if question.save!
      render json: question
    end
  end

  private 

  # define question_params

  def question_params
    params.permit(:title, :content, :tags)
  end

  def record_invalid(e)
    render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
  end
  
end
