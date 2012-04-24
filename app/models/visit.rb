class Visit < ActiveRecord::Base
  attr_accessible :employee_id, :end, :patient_id, :start, :day
  
  belongs_to :patient
  belongs_to :employee
  has_many :tasks
  
  validates_presence_of :employee, :patient, :day


  def self.all_today
    visits = self.where("day = ?", Date.today)
    return visits
  end
  
  
  
end
