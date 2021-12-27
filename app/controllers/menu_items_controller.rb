class MenuItemsController < ApplicationController
  before_action :ensure_owner

  # ? => /menu_items
  # ? => POST
  def create
    menu_id = params[:menu_id]
    name = params[:name]
    description = params[:description]
   
    new_menu_item = MenuItem.new(menu_id: menu_id, name: name, description: description)
    new_menu_item.save
    if new_menu_item.save
      respond_to do |format|
       
          format.html { redirect_to mainpages_path, notice: "Writter was successfully created." }
          format.js
      end
    else
      flash[:error] = new_menu_item.errors.full_messages.join(" , ")
      redirect_to orders_path
    end
  end

  # ? => DELETE
  def destroy
    menu_item_id = params[:id]
    menu_item = MenuItem.find(menu_item_id)
    menu_item.destroy
    redirect_to orders_path
  end
end
