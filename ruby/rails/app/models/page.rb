class Page < ActiveRecord::Base
  attr_accessible :youdao_url

  belongs_to :list

  validates :youdao_url, presence: true

  default_scope order("permalink ASC")
end