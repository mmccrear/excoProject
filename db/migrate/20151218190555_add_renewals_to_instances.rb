class AddRenewalsToInstances < ActiveRecord::Migration
  def change
    add_column :instances, :renewal, :boolean
    add_column :instances, :status, :text
    
    add_column :instances, :new_course_id, :integer
    add_foreign_key :instances, :new_courses, column: :new_course_id
    add_column :instances, :renewal_id, :integer
    add_foreign_key :instances, :application_renewals, column: :renewal_id
  
    add_column :instructors, :user_id, :integer
    add_foreign_key :instructors, :users, column: :user_id
    add_column :instructor_apps, :instructor_id, :integer
    add_foreign_key :instructor_apps, :instructors, column: :instructor_id
    add_column :new_courses, :instance_id, :integer
    add_foreign_key :new_courses, :instances, column: :instance_id
    add_column :application_renewals, :instance_id, :integer
    add_foreign_key :application_renewals, :instances, column: :instance_id
    add_column :instructor_apps, :instance_id, :integer
    add_foreign_key :instructor_apps, :instances, column: :instance_id
  end
  
  create_table :users_instances, id: false do |t|
      t.belongs_to :users, index: true
      t.belongs_to :instances, index: true
    end
  
  

end
