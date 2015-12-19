class NewCourse < ActiveRecord::Base
  belongs_to :instance
  has_many :instructor_apps
  #has_many :instructors, :through => :instructor_app

  acts_as_commontable

end
