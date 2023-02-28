class Question < ApplicationRecord
  belongs_to :user
  has_many :question_tags
  has_many :tags, through: :question_tags
  has_many :answers
  has_many :reaction_questions
  has_many :reactions, through: :reaction_questions
  

  # title must be at least 3 words long
  validates :title, presence: true, length: { minimum: 3 }
  # content must be at least 500 characters long
  validates :content, presence: true, length: { minimum: 50 }
end
