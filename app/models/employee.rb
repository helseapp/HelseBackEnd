class Employee < ActiveRecord::Base
  attr_accessible :address, :postplace, :mobilephone, :birthdate, :postnumber, :lastname, :woman, :firstname, :telephone, :email
  belongs_to :workplace
  
  validates_uniqueness_of :mobilephone, :email, :on => :save, :message => "Må være unike"
  validates_presence_of :firstname, :lastname, :telephone, :postnumber, :woman, :on => :save, :message => "Må fylles ut"
end
