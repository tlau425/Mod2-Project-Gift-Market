class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def show
    show_the_cart
  end

  def checkout
    show_the_cart
    @total_price = 0

    @cart_items.each do |card|
      @total_price += card.price
      end
      if current_user.dollars > @total_price
        @cart_items.each do |card|

        Transaction.create(user_id:current_user.id, card_id: card.id)
        @card = Card.find(card.id)
        @company = Company.find(card.company.id)
        current_user.buy_card(@card)
        end
        session[:cart] = []
        redirect_to transactions_path
        else
          flash[:notice] = "Insufficient Funds."
          redirect_to cards_path
      end
    end

  end
