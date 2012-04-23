class Task < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :task_template
  belongs_to :visit

end
