class Comment < ActiveRecord::Base
   attr_accessible :text, :employee, :patients_id
   belongs_to :patient
   belongs_to :employee
end
