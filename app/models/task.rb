class Task < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :task_template, :visit
end
