class ReactionAnswer < ApplicationRecord
  belongs_to :answer
  belongs_to :user
  belongs_to :reaction
  
end
