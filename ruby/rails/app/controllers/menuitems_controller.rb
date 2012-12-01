class MenuitemsController < ApplicationController
  def create
    @menuitem = Menuitem.new(params[:menuitem])
    @menuitem.save
    render "menuitems/refresh"
  end
end
