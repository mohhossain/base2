class User < ApplicationRecord
    has_one_attached :profile_picture
    has_many :questions
    has_many :answers
    has_many :questions, through: :answers
    has_secure_password
end
