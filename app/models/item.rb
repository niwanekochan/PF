class Item < ApplicationRecord
  attachment :image
  belongs_to :genre
  has_many :comments, dependent: :destroy
end
