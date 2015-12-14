class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :coursenum
      t.string :title
      t.text :description
      t.boolean :active

      t.timestamps null: false
    end
  end
end
