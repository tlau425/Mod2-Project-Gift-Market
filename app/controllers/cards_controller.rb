class CardsController < ApplicationController
  before_action :get_params, only: [:show, :edit, :update, :destroy]
  before_action :get_categories, only: [:new, :edit]
  before_action :get_companies, only: [:new, :edit]

  def index
    @cards = Card.all
    show_the_cart
    current_user
    @transactions = Transaction.all
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.create(card_params)
    if @card.valid?
      redirect_to card_path(@card)
    else flash[:errors] = @card.errors.full_messages
      redirect_to new_card_path
    end
  end

  def show
  end

  def edit
  end

  def update
    @card.update(card_params)
    @card.save
    redirect_to cards_path
  end

  def destroy
    @card.destroy
    redirect_to cards_path
  end

  private
  def get_params
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:name, :value, :price, :category_id, :user_id)
  end

  def get_categories
    @categories = Category.all
  end

  def get_companies
    @companies = Company.all
  end

end
