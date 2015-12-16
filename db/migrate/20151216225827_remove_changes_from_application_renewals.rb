class RemoveChangesFromApplicationRenewals < ActiveRecord::Migration
  def change
    rename_column :application_renewals, :changes, :dbowie
  end
end
