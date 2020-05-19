class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian']
  validates :category, inclusion: { in: CATEGORY }
  validates :category, presence: true
  validates :name, presence: true
  validates :address, presence: true
end
