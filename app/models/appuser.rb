class Appuser < ActiveRecord::Base
  attr_accessible :employee_id, :hashed_password
  validates_presence_of :employee_id, :hashed_password
  validates_uniqueness_of :employee_id
  belongs_to :employee

end
