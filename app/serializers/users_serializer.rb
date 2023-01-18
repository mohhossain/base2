class UsersSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_picture

  def profile_picture
    if object.profile_picture
      object.profile_picture.url
    else  
      return nil
    end
  end
end
