class CreateApplicationRenewals < ActiveRecord::Migration
  def change
    create_table :application_renewals do |t|
      t.string :name
      t.string :semester
      t.integer :year
      t.integer :credits
      t.integer :capactiy
      t.text :problems
      t.text :changes
      t.text :engagement

      t.timestamps null: false
    end
  end
end
