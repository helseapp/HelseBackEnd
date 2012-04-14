class Employee < ActiveRecord::Base
  attr_accessible :address, :postplace, :mobilephone, :birthdate, :postnumber, :lastname, :woman, :firstname, :telephone, :email
  belongs_to :workplace
  
  
  
end
