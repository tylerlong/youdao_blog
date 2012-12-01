class Page < ActiveRecord::Base
  attr_accessible :content, :snippet, :title, :youdao_url

  belongs_to :list
end
