class Favorite < ApplicationRecord
  belongs_to :item
  belongs_to :user

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
