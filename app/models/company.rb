class Company < ApplicationRecord
  has_many :cards
  has_many :transactions
end
