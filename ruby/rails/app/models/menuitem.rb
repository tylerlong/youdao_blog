class Menuitem < ActiveRecord::Base
  attr_accessible :title, :permalink

  validates :title, presence: true
  validates :permalink, presence: true

  default_scope order("id ASC")
end