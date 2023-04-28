class Item < ApplicationRecord

  validates :recipes             ,presence: true
  validates :description         ,presence: true

  belongs_to :user
  has_one :reserve
  has_one_attached :image




end
