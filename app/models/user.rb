class User < ApplicationRecord
  has_secure_password

  has_many :transactions, dependent: :destroy
  has_many :cards, through: :transactions
  validates :user_name, presence: true, uniqueness: true

  def buy_card(card)
    if self.dollars >= card.price
      new_balance = self.dollars - card.price
      company_balance = card.company.dollars + card.price
      self.update(dollars: new_balance)
      card.company.update(dollars: company_balance)
    # else
    #   flash[:notice] = "You do not have enough in your balance."
    end
  end

  def add_money
    current_user.dollars += params[:dollars]
  end

end
