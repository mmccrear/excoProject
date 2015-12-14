class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :email
      t.string :name
      t.string :tnumber
      t.string :pronouns
      t.string :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
