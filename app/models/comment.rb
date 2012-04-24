class Comment < ActiveRecord::Base
   attr_accessible :text, :employee, :patient
   belongs_to :patient
   belongs_to :employee
end
