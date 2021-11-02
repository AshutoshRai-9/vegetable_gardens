class CartsController < ApplicationController
  VEGETABLES_PER_PAGE= 5

  def create
   # @cart= Vegetable.find(params[:vegetable_id])
   @cart= Cart.new(vegetable_id: params[:vegetable_id],
                   user_id: params[:user_id],
                   vegetable_name: params[:vegetable_name])
   if @cart.save
    
      CartMailer.user_confirmation_email(@cart,@user=>current_user.email).deliver_now
       #redirect_to cart_path
      @cartdata= Cart.where(user_id: params[:user_id])

   end
   #@cart= Cart.vegetables(params[:vegetable_id])



  end

  def index
    @page= params.fetch(:page,0).to_i

    @cart_data1 = Cart.where(id: params[:cart_id],vegetable_id: params[:id]).first.destroy
    @cartdata = Cart.where(user_id: params[:user_id])
    

    # @cart_data.each do |c|

    #   if c.destroy
    #     render "carts/create"
    #   end
    # end
      respond_to do |format|
        format.js
  
      end

  end
  def Add_more_items
       @vegetable= Vegetable.find( params[:vegetable_id])
       @cart=Cart.new(user_id: params[:user_id],:vegetable_name=> @vegetable.product,:vegetable_id=>@vegetable.id)
       @cart.save
         #render "carts/create"
         @cartdata= Cart.where(user_id: params[:user_id])
      
         respond_to do |format|
          format.js
         end
      

    end

  
end