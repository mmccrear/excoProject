class AddForeignKeysToTables < ActiveRecord::Migration
  def change
     
    create_table "students" do |t|
      t.string "name"
      t.string "email"
    end
    
    add_column :instances, :inst_course_id, :integer
    add_column :instructors, :instruct_inst_id, :integer
    add_column :students, :student_inst_id, :integer
    add_column :grades, :grade_instruct_id, :integer
    add_column :grades, :grade_inst_id, :integer
    add_column :application_renewals, :app_renew_instruct_app_id, :integer 
    add_column :application_renewals, :app_renew_course_id, :integer
    add_column :instructor_apps, :instruct_app_instruct_id, :integer
    add_column :instructor_apps, :new_course_id, :integer
    
    add_foreign_key :instances, :courses, column: :inst_course_id 
    add_foreign_key :instructors, :instances, column: :instruct_inst_id
    add_foreign_key :students, :instances, column: :student_inst_id
    add_foreign_key :grades, :instructors, column: :grade_instruct_id
    add_foreign_key :grades, :instances, column: :grade_inst_id
    add_foreign_key :application_renewals, :instructor_apps, column: :app_renew_instruct_app_id 
    add_foreign_key :application_renewals, :courses, column: :app_renew_course_id
    add_foreign_key :instructor_apps, :instructors, column: :instruct_app_instruct_id
    add_foreign_key :instructor_apps, :new_courses, column: :new_course_id

  end
end
