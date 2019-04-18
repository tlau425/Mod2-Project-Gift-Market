class CartsController < ApplicationController

  def update

    @card = Card.find(params[:id])
    
    if cart.include?(@card.id.to_s)
      flash[:notice] = "Item is already in your cart"
    else
    flash[:notice] = "Successfully added #{@card.name}"
    add_to_cart(params[:id])

    end
    redirect_to cards_path
  end

  def delete_item
    remove_from_cart(params[:id])
    redirect_to cards_path
  end


end
