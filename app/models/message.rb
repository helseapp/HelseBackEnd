class Message < ActiveRecord::Base
  attr_accessible :employee, :date_sent, :text, :read, :high_priority
  belongs_to :employee
  
end
