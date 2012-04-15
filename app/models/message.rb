class Message < ActiveRecord::Base
  attr_accessible :text, :date_sent, :employee, :high_priority, :read
  belongs_to :employee
  validates_presence_of :text
  
end
