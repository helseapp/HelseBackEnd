class Workplace < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :employees
  has_many :patients
end
