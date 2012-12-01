class Menuitem < ActiveRecord::Base
  attr_accessible :title, :permalink

  validates :title, presence: true
  validates :permalink, presence: true

  default_scope order("id ASC")

  Page_permalink_regex = /\d+/
  def list_page?
    return !Page_permalink_regex.match(self.permalink)
  end
end