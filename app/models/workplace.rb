class Workplace < ActiveRecord::Base
  has_many :employees
  has_many :patients
  
  attr_accessible :postplace, :name, :address, :postnumber, :telephone
  validates_uniqueness_of :telephone, :message => "Telefonnummeret er allerede registrert. Finnes samme organisasjon i systemet?"
  
  geocoded_by :address
  after_validation :geocode
  
  
end
