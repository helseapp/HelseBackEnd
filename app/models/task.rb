class Task < ActiveRecord::Base
  attr_accessible :visit_id, :task_template_id, :completed
  belongs_to :task_template
  belongs_to :visit

end
