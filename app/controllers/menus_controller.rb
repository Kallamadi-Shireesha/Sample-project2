class MenusController < ApplicationController
  before_action :ensure_owner

  # ? => /menus
  def index
    @menus=Menu.all
    
  end
  def new 
    @menu=Menu.new 
    respond_to do |format|
      format.js { render :file => "/orders/index.js.erb" }
  end
  end
  
  # ? => /menus
  # ? POST
  def create
    name = params[:name]
    new_menu = Menu.new(name: name)
    new_menu.save
    if new_menu.save
      
      redirect_to orders_path
    else
      flash[:error] = new_menu.errors.full_messages.join(" , ")
      redirect_to orders_path_path
    end
  end
end
