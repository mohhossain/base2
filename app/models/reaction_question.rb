class ReactionQuestion < ApplicationRecord
  belongs_to :question
  belongs_to :user
  belongs_to :reaction
end
