class Reaction < ApplicationRecord
    has_many :reaction_answers 
    has_many :reaction_questions
    
end
