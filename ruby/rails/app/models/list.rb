class List < ActiveRecord::Base
  attr_accessible :permalink

  has_many :pages, dependent: :destroy

  validates :permalink, presence: true
end
