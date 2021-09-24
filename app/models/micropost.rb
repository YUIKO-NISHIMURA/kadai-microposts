class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :reverses_of_favorite, class_name:"Favorite", dependent: :destroy
  has_many :favorite_users, through: :reverses_of_favorite, source: :user, dependent: :destroy
  
  validates :content, presence: true, length:{ maximum:255 }
end
