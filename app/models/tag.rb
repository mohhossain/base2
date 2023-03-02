class Tag < ApplicationRecord
    has_many :question_tags
    has_many :questions, through: :question_tags

    # validates tag to start with # 
    validates :name, format: { with: /\A#/, message: "must start with #" }
end
