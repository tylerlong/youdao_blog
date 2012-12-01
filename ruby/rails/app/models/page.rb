require 'date'
require 'net/http'
require 'uri'

class Page < ActiveRecord::Base
  attr_accessible :youdao_url

  belongs_to :list

  validates :youdao_url, presence: true

  default_scope order("permalink DESC")

  def created_date
    DateTime.strptime(self.permalink, '%s').strftime('%F')
  end

  Youdao_regex = /\?id=([a-f0-9]+?)&type=/
  def refresh
    youdao_id = Youdao_regex.match(self.youdao_url).captures[0]
    youdao_uri = URI.parse("http://note.youdao.com/yws/public/note/#{youdao_id}?keyfrom=public")
    response = Net::HTTP.get_response youdao_uri
    data = JSON.load response.body
    self.content = data["content"]
    self.title = data["tl"]
    self.permalink = data["ct"]
    self.save
  end

end