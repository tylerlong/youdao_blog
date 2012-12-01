class List < ActiveRecord::Base
  attr_accessible :title, :permalink

  has_many :pages, dependent: :destroy
end
