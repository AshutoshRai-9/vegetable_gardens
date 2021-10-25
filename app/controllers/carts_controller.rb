class CartsController < ApplicationController
  def create
   # @cart= Vegetable.find(params[:vegetable_id])
   @cart= Cart.new(vegetable_id: params[:vegetable_id])
   @cart.save
   #@cart= Cart.vegetables(params[:vegetable_id])
  end
  
end