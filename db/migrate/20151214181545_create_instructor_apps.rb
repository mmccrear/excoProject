class CreateInstructorApps < ActiveRecord::Migration
  def change
    create_table :instructor_apps do |t|
      t.string :course
      t.integer :year
      t.string :semester
      t.string :tnumber
      t.text :status
      t.text :qualifications
      t.text :teaching_exp
      t.text :problems
      t.text :excos_taken
      t.text :exco_problems
      t.text :safe_space

      t.timestamps null: false
    end
  end
end
