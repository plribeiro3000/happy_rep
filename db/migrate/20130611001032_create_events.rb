class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :capacity
      t.float :profit
      t.datetime :event_date

      t.timestamps
    end
  end
end
