class User < ApplicationRecord
    has_one_attached :profile_picture
    has_many :questions
    has_many :answers
    # has_many :questions, through: :answers
    # has_many :skills, through: :user_skills
    has_many :user_skills
    has_many :skills, through: :user_skills
    has_secure_password

    # validates the username, must be unique and not blank, and at least 6 characters long
    validates :username, uniqueness: true, presence: true, length: { minimum: 6 }
    # password must be 8 characters long and contain at least one number, uppercase letter, and lowercase letter, and a special character
    # response with custom error message if password does not meet requirements
    validates :password, presence: true, length: { minimum: 8 }, format: { with: /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[[:^alnum:]])/, message: "must be 8 characters long and contain at least one number, uppercase letter, lowercase letter, and a special character" }
    # email must be unique and not blank, and must be in the correct format
    validates :email, uniqueness: true, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :name, presence: :true
    # validate :profile_picture, presence: :false

end
