class Instructor < ActiveRecord::Base
  has_many :instructor_apps
  belongs_to :user
end
