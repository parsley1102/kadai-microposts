class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  #お気に入り機能
  has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'like_id'
  has_many :likers, through: :reverses_of_favorite, source: :micropost
end
