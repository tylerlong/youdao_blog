class Menuitem < ActiveRecord::Base
  attr_accessible :title, :permalink

  default_scope order("id ASC")
end