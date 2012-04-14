class Employee < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :workplace
  
  
  
end
