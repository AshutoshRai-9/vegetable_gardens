require "test_helper"

class CartMailerTest < ActionMailer::TestCase
default from: "abc@email.com"
def user_confirmation_email
  @user= params[:user]



end
