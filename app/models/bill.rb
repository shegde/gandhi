class Bill < ActiveRecord::Base
  attr_accessible :number, :location
  
  belongs_to :user
  
  validates :number, :presence => true
  validates :user_id, :presence => true
end
