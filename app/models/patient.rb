class Patient < ActiveRecord::Base
  belongs_to :workplace
  has_and_belongs_to_many :visits
  
  attr_accessible :postplace, :workplace, :address, :postnumber, :birthdate, :lastname, :woman, :firstname, :workplace
  
  
  geocoded_by :address
  after_validation :geocode
  
end
