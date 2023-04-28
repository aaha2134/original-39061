class Item < ApplicationRecord

  validates :recipes             ,presence: true, length: { maximum: 255 }
  validates :description         ,presence: true
  validates :image, presence: true

  belongs_to :user
  has_one :reserve
  has_one_attached :image




end
