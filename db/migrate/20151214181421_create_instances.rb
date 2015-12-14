class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.integer :year
      t.string :semester
      t.string :location
      t.string :time
      t.integer :section

      t.timestamps null: false
    end
  end
end
