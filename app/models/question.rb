class Question < ApplicationRecord
  belongs_to :user
  has_many :question_tags
  has_many :tags, through: :question_tags
  has_many :answers
  has_many :reaction_questions
  has_many :reactions, through: :reaction_questions
  has_many_attached :images
end
