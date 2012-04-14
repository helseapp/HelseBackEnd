class Patient < ActiveRecord::Base
  # attr_accessible :title, :bodys
  belongs_to :workplace
end
