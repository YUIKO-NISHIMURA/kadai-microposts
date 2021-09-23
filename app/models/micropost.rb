class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :reverses_of_favorite, class_name:"Favorite"
  has_many :favorite_users, through: :reverses_of_favorite, source: :user
  
  validates :content, presence: true, length:{ maximum:255 }
end
