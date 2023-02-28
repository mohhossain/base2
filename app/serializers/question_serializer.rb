class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :reactions, :created_at
  has_many :reactions, through: :reaction_questions
  belongs_to :user, serializer: UsersSerializer
end
