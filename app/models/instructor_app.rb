class InstructorApp < ActiveRecord::Base
  belongs_to :instructor
  belongs_to :new_course
  belongs_to :instance

  acts_as_commontable

end
