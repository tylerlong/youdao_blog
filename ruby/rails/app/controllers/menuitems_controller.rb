class MenuitemsController < ApplicationController

  def create
    Menuitem.create(params[:menuitem])
    render "menuitems/refresh"
  end

  def destroy
    Menuitem.find(params[:id]).destroy
    render "menuitems/refresh"
  end

end