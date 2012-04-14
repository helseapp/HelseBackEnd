class Workplace < ActiveRecord::Base
  has_many :employees
  has_many :patients
  
  attr_accessible :postplace, :name, :address, :postnumber, :telephone
  
  geocoded_by :address
  after_validation :geocode
  
  
end
