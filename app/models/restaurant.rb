class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  
  validates_associated :reviews

  validates :name, presence: true

  validates :phone_number, presence: true

  validates :address, presence: true

  validates :category, presence: true

  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian]}
end
