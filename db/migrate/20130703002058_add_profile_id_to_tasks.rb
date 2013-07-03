class AddProfileIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :profile_id, :integer, :references => :profile
  end
end
