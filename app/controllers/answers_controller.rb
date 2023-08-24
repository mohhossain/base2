class AnswersController < ApplicationController
    # create answer method

    def create
        answer = Answer.create(content: answer_params[:content], question_id: answer_params[:question_id], user_id: current_user.id)
        # return answers sorted by most recent
        
        puts answer
        render json: answer.to_json()
    end

    private 

    def answer_params
        params.permit(:content, :question_id)
    end
end
