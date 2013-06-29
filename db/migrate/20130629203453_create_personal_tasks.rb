class CreatePersonalTasks < ActiveRecord::Migration
  def change
    create_table :personal_tasks do |t|
      t.string :name
      t.string :description
      t.datetime :start_date

      t.timestamps
    end
  end
end
