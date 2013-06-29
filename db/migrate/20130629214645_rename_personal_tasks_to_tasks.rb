class RenamePersonalTasksToTasks < ActiveRecord::Migration
  def change
    rename_table :personal_tasks, :tasks
  end
end