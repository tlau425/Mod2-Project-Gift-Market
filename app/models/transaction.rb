class Transaction < ApplicationRecord
  belongs_to :user
  has_many :cards, through: :company
end