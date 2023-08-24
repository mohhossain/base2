class AnswersSerializer < ActiveModel::Serializer
  attributes :id, :content, :user, :created_at
  belongs_to :user, serializer: UsersSerializer
end
