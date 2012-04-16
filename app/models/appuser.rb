class Appuser < ActiveRecord::Base
  attr_accessible :employee, :hashed_password
  validates_presence_of :employee, :hashed_password
  validates_uniqueness_of :employee

end
