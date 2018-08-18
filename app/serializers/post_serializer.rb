class PostSerializer < ActiveModel::Serializer
    attributes :id, :body
    belongs_to :user

    class UserSerializer < ActiveModel::Serializer
        attributes :name
    end 
end 