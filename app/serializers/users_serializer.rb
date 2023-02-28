class UsersSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :profile_picture
  has_many :skills, through: :user_skills
  has_many :questions, serializer: QuestionSerializer
  def profile_picture
    if object.profile_picture
      object.profile_picture.url
    else  
      return nil
    end
  end
end
