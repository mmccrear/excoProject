class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.boolean :orientation, default:false
      t.boolean :exco_fair, default:false
      t.boolean :agreement, default:false
      t.float :midterm_eval
      t.float :auditing
      t.float :final_eval
      t.float :final_paper

      t.timestamps null: false
    end
  end
end
