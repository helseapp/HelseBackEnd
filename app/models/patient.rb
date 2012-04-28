class Patient < ActiveRecord::Base
  belongs_to :workplace
  
  attr_accessible :postplace, :workplace, :address, :postnumber, :birthdate, :lastname, :woman, :firstname, :workplace, 
  :mobilephone, :telephone, :marital_status, :email, :workplace_id
  
  validates_presence_of :postnumber, :address, :firstname, :lastname, :email, :mobilephone, :birthdate
  
  has_many :visits
  has_many :comments
  has_many :tasks, :through => :visits
  
  geocoded_by :address
  after_validation :geocode
  
  
  
end
