class TagSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :questions, through: :question_tags, serializer: QuestionSerializer
end
