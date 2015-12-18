class Instance < ActiveRecord::Base
  has_one :new_course
  has_one :application_renewal
  has_many :instructor_apps
  has_many :instructors, :through => :instructor_app
  belongs_to :course
end
