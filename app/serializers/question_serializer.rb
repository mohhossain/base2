class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :answers, :reactions, :created_at
  has_many :reactions, through: :reaction_questions
  has_many :tags, through: :question_tags
  belongs_to :user, serializer: UsersSerializer

  # create a method that returns all the answers for the question
  def answers
    # create a variable that holds all the answers for the question
    answers = object.answers 
    # map over the answers and return the answers serializer
    serialiized_answers = answers.map do |answer|
      AnswersSerializer.new(answer)
    end
    return serialiized_answers
  end

end
