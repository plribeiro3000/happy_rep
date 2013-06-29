class CreateVacines < ActiveRecord::Migration
  def change
    create_table :vacines do |t|
      t.date :event_date

      t.timestamps
    end
  end
end
