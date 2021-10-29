class CartMailer < ApplicationMailer
    default from:  'rai137506@gmail.com'

    def user_confirmation_email(cart,user)
        #@user= params[:current_user]
        @user= user
        @cart= cart
        mail(:to => 'ashutoshr@chetu.com', :subject => "items added to cart")
    end
end
