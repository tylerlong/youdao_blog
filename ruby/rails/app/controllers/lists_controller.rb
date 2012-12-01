class ListsController < ApplicationController

  def create
    @list = List.create(params[:list])
    render "lists/refresh"
  end

  def destroy
    List.find(params[:id]).destroy
    render "lists/refresh"
  end

end