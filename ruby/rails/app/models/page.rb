class Page < ActiveRecord::Base
  attr_accessible :content, :snippet, :title, :youdao_url

  belongs_to :list

  default_scope order("permalink ASC")
end
