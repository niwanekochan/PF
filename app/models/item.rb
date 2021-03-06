class Item < ApplicationRecord
  attachment :image
  belongs_to :genre
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :tags


  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  def self.search(keyword)
    where(["name like?", "%#{keyword}%"])
  end
end
