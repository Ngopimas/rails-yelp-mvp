class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, inclusion: 0..5
  validates :rating, presence: true
  validates :content, presence: true
  validates :restaurant, presence: true
end
