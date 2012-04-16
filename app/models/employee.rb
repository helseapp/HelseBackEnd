class Employee < ActiveRecord::Base
  
  attr_accessible :address, :postplace, :mobilephone, :birthdate, :postnumber, :lastname, :woman, :firstname, :telephone, :email, :workplace
  belongs_to :workplace
  has_and_belongs_to_many :visits
  
  validates_uniqueness_of :mobilephone, :email, :on => :save, :message => "Maa vaere unike"
  validates_presence_of :firstname, :lastname, :telephone, :postnumber, :woman, :on => :save, :message => "Maa fylles ut"
end
