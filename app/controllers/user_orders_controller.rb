class UserOrdersController < ApplicationController
  def index
    
    @user=@current_user
    #flash[:success]=@user
    #UserMailer.with(user: @user).signup_confirmation.deliver_now
    #UserMailer.signup_confirmation.deliver_later(wait: 1.minute)
  end
end
