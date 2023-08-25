class AnswersController < ApplicationController


    def index
        answers = Answer.all.order(created_at: :desc).where(question_id: params[:question_id])
        # find all answers for a question
        # answers = Answer.all.order(cre)
        render json: answers, each_serializer: AnswersSerializer
    end

    def create
        answer = Answer.create(content: answer_params[:content], question_id: answer_params[:question_id], user_id: current_user.id)
        # return answers sorted by most recent
        # create a answer object with the user and the answer
        puts answer
        render json: answer, serializer: AnswersSerializer
    end

    private 

    def answer_params
        params.permit(:content, :question_id)
    end
end
