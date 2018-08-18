class PostSerializer < ActiveModel::Serializer
    attributes :id, :body
    belongs_to :user

    class UserSerializer < ActiveModel::Serializer
        attributes :id, :token, :name
    end 
end 