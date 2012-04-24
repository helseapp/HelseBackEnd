class Comment < ActiveRecord::Base
   attr_accessible :text, :employee, :patient
   belongs_to :patient
end
