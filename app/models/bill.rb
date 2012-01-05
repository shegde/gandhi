class Bill < ActiveRecord::Base
  attr_accessible :number, :location, :info
  
  belongs_to :user
  
  validates :number, :presence => true
  validates :location, :presence => true
end
