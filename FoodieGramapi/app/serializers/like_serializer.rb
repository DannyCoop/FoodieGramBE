class LikeSerializer < ActiveModel::Serializer
  belongs_to :user 
  attributes :id, :user_id, :post_id
end
