class Visit < ActiveRecord::Base
  attr_accessible :employee, :end, :patient, :start, :day
  has_many :tasks
  has_and_belongs_to_many :employees
  has_and_belongs_to_many :patients
end
