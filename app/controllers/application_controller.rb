class ApplicationController < ActionController::Base
  before_action :authorized
  helper_method :current_user

  def cart
    session[:cart] ||= []
  end

  def add_to_cart(card_id)
    cart << card_id
  end

  def remove_from_cart(card_id)
    session[:cart] = session[:cart].select do |id|
      card_id != id
    end
  end

  def show_the_cart
    @cart_items = Card.find(cart)
  end

  def current_user
    User.find_by({id: session[:user_id]})
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

end
