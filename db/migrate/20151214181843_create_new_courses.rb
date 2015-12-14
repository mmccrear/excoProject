class CreateNewCourses < ActiveRecord::Migration
  def change
    create_table :new_courses do |t|
      t.string :name
      t.string :semester
      t.integer :year
      t.string :divison
      t.text :description
      t.text :why_exco
      t.text :evaluations
      t.integer :credits
      t.integer :hours_meet
      t.integer :hours_outside
      t.integer :capactiy
      t.string :signature

      t.timestamps null: false
    end
  end
end
