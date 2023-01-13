class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :reaction_answers 
  has_many :reactions, through: :reaction_answers
end
