class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @counter = acccess_counter
    @cart = current_cart
  end

  def acccess_counter
    if session[:counter].nil?
      session[:counter] = 0
    end
      session[:counter] += 1
  end
  
end
