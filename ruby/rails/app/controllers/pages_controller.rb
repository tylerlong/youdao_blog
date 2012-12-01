require 'net/http'
require 'uri'

class PagesController < ApplicationController

  Youdao_regex = /\?id=([a-f0-9]+?)&type=/

  def create
    @page = Page.new(params[:page])
    @page.list_id = params[:list_id]
    youdao_id = Youdao_regex.match(@page.youdao_url).captures[0]
    youdao_url = "http://note.youdao.com/yws/public/note/#{youdao_id}?keyfrom=public"
    uri = URI.parse(youdao_url)
    response = Net::HTTP.get_response uri
    data = JSON.load response.body
    @page.content = data["content"]
    @page.title = data["tl"]
    @page.permalink = data["ct"]
    @page.snippet = "just kidding"
    @page.save
    @section = @page.list_id.present? ? "lists" : "pages"
    render "pages/refresh"
  end

  def destroy
    page = Page.find(params[:id])
    @section = page.list_id.present? ? "lists" : "pages"
    page.destroy
    render "pages/refresh"
  end

end