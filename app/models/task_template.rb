class TaskTemplate < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :tasks
end