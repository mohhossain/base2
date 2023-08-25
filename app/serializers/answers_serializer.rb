class AnswersSerializer < ActiveModel::Serializer
  belongs_to :user, serializer: UsersSerializer
  attributes :id, :content, :user, :created_at
end
