class Patient < ActiveRecord::Base
  belongs_to :workplace
  
  attr_accessible :postplace, :workplace, :address, :postnumber, :birthdate, :lastname, :woman, :firstname, :workplace
  
  geocoded_by :address
  after_validation :geocode
  
end
