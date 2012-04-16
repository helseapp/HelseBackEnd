class Appuser < ActiveRecord::Base
  attr_accessible :mobilephone, :hashed_password
  validates_presence_of :mobilephone, :hashed_password
  validates_uniqueness_of :mobilephone
  belongs_to :employee
  has_one :mobilephone, :through => :employee
  

end
