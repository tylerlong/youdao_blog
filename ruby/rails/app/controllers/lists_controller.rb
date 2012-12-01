class ListsController < ApplicationController
  def create
    @list = List.new(params[:list])
    @list.save
    redirect_to admin_path
  end
end
