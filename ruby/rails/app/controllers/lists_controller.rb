class ListsController < ApplicationController

  def create
    @list = List.create(params[:list])
    render "lists/refresh"
  end

  def destroy
    List.find(params[:id]).destroy
    render "lists/refresh"
  end

  def show
    @menuitem = Menuitem.find_by_permalink(params[:permalink]) || raise_404
    @list = List.find_by_permalink(params[:permalink]) || raise_404
  end

end