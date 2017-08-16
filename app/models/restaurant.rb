class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness:true, presence: true
  validates :address, presence: true
  validates :phone_number, uniqueness:true, presence: true
  validates :category, presence: true, inclusion: { in: %w(French Indian Italian Chinese Turkish Burger)}
end


def self.search(search)
  where("name LIKE ?", "%#{search}%")
end
