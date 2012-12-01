class PagesController < ApplicationController

  def create
    @page = Page.new(params[:page])
    @page.list_id = params[:list_id]
    @page.refresh
    @section = @page.list_id.present? ? "lists" : "pages"
    render "pages/refresh"
  end

  def destroy
    page = Page.find(params[:id])
    @section = page.list_id.present? ? "lists" : "pages"
    page.destroy
    render "pages/refresh"
  end

  def show
    @page = Page.find_by_permalink(params[:permalink]) || raise_404
  end

  def refresh
    page = Page.find(params[:id])
    @section = page.list_id.present? ? "lists" : "pages"
    page.refresh
    page.save
    render "pages/refresh"
  end

end