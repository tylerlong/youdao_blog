class Page < ActiveRecord::Base
  belongs_to :list
  attr_accessible :content, :snippet, :title, :youdao_url
end
