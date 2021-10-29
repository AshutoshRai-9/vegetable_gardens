class CartsController < ApplicationController
  def create
   # @cart= Vegetable.find(params[:vegetable_id])
   @cart= Cart.new(vegetable_id: params[:vegetable_id],
                   user_id: params[:user_id],
                   vegetable_name: params[:vegetable_name])
   if @cart.save
    
      CartMailer.user_confirmation_email(@cart,@user=>current_user.email).deliver_now

   
   @cartdata= Cart.where(user_id: params[:user_id])
   end
   #@cart= Cart.vegetables(params[:vegetable_id])
  end
  
end