class Item < ApplicationRecord
  attachment :image
  belongs_to :genre
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
end
