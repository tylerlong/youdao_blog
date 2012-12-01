class List < ActiveRecord::Base
  attr_accessible :permalink

  has_many :pages, dependent: :destroy

  validates :permalink, presence: true

  def refresh
    self.pages.each do |page|
      page.refresh
      page.save
    end
  end
end