class Card < ApplicationRecord
  belongs_to :category
  belongs_to :company
  has_one :user, through: :transaction

  validates :name, presence: true
  validates :value, numericality:{greater_than_or_equal_to: 0}
  validates :price, numericality:{greater_than_or_equal_to: 0}
end
