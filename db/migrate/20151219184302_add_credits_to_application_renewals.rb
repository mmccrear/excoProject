class AddCreditsToApplicationRenewals < ActiveRecord::Migration
  def change
    add_column :application_renewals, :credits, :integer
  end
end
