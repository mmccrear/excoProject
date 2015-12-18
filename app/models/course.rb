class Course < ActiveRecord::Base
  has_many :instances
end
