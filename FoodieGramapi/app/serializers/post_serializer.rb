class PostSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :comments
  has_many :likes
  attributes :id, :user, :captions ,:image_url
end
