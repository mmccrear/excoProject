class AddForeignKeysToTables < ActiveRecord::Migration
  def change
     
    create_table "students" do |t|
      t.string "name"
      t.string "email"
    end
    
    add_reference :instances, :courses, index: true, foreign_key: true
    add_reference :instructors, :instances, index: true, foreign_key: true
    add_reference :students, :instances, index: true, foreign_key: true
    add_reference :grades, :instructors, index: true, foreign_key: true
    add_reference :grades, :instances, index: true, foreign_key: true
    add_reference :application_renewals, :instructor_apps, index: true, foreign_key: true
    add_reference :application_renewals, :courses, index: true, foreign_key: true
    add_reference :instructor_apps, :instructors, index: true, foreign_key: true
    add_reference :new_courses, :instructor_app, index: true, foreign_key: true

  end
end
