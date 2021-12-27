class UsersController < ApplicationController
  protect_from_forgery
  skip_before_action :ensure_logged_in
  def index 
    @users=User.all 
    render :json=> @users
  end
  def new
    
  end

  def create
    name = params[:name]
    email = params[:email]
    password = params[:password]
    role = params[:role]
    new_user = User.new(
      name: name,
      email: email,
      password: password,
      role: role,
    )
    new_user.save
    if new_user.save
      
      session[:current_user_id] = new_user.id
      session[:current_user_role] = new_user.role
      @user=new_user
      #flash[:success]=@user
      UserMailer.with(user: @user).signup_confirmation.deliver_later(wait: 1.minute)
      #UserMailer.with(user: @user).signup_confirmation.deliver_now
      #flash[:success] = "successfully signed in"
      #UserMailer.signup_confirmation.deliver_later!(wait_until: 1.hours.from_now)
      redirect_to "/"
    else
      flash[:error] = new_user.errors.full_messages.join(" , ")
      redirect_to new_user_path
    end
  end
  
end
