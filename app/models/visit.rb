class Visit < ActiveRecord::Base
  attr_accessible :employee, :end, :patient, :start, :day
  
  validates_presence_of :employee, :patient, :day
  belongs_to :patient
  belongs_to :employee
  
  
  has_many :tasks
end
