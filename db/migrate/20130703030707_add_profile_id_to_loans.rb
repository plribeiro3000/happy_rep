class AddProfileIdToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :profile_id, :integer, :references => :profile
  end
end