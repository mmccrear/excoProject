class AddCourseToInstructorApps < ActiveRecord::Migration
  def change
    add_column :instructor_apps, :course, :string
    add_column :new_courses, :name, :string
  end
end
