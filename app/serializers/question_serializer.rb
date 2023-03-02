class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :reactions, :created_at
  has_many :reactions, through: :reaction_questions
  has_many :tags, through: :question_tags
  belongs_to :user, serializer: UsersSerializer
end
