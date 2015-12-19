class RemoveColumnsFromTables < ActiveRecord::Migration
  def change
    remove_column :application_renewals, :name
    remove_column :application_renewals, :semester
    remove_column :application_renewals, :year
    remove_column :application_renewals, :credits
    remove_column :instructor_apps, :course
    remove_column :instructor_apps, :year
    remove_column :instructor_apps, :semester
    remove_column :instructor_apps, :tnumber
    remove_column :new_courses, :name
    remove_column :new_courses, :semester
    remove_column :new_courses, :year
  end
end
