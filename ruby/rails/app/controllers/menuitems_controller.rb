class MenuitemsController < ApplicationController
  def create
    @menuitem = Menuitem.new(params[:menuitem])
    @menuitem.save
    redirect_to admin_path
  end
end
