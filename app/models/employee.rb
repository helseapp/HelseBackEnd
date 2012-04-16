require 'bcrypt'

class Employee < ActiveRecord::Base
  include BCrypt
  
  def password
    @password = Password.new(password_hash)
  end
  
  def password=(new_password)
      @password = Password.create(new_password)
      self.password_hash = @password
  end
  
  
  attr_accessible :address, :postplace, :mobilephone, :birthdate, :postnumber, :lastname, :woman, :firstname, :telephone, :email, :workplace
  belongs_to :workplace
  has_and_belongs_to_many :visits
  
  validates_uniqueness_of :mobilephone, :email, :on => :save, :message => "Må være unike"
  validates_presence_of :firstname, :lastname, :telephone, :postnumber, :woman, :on => :save, :message => "Må fylles ut"
end
