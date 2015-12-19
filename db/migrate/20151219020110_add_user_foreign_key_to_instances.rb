class AddUserForeignKeyToInstances < ActiveRecord::Migration
  def change
    add_column :instances, :user_id, :integer
    add_foreign_key :instances, :users, column: :user_id
  end
end
