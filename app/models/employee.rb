class Employee < ActiveRecord::Base
  has_many :overdrafts
end
