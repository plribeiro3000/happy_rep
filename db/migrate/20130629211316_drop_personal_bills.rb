class DropPersonalBills < ActiveRecord::Migration
  def up
    drop_table :personal_bills
  end

  def down
    create_table :personal_bills do |t|
      t.string :name
      t.string :description
      t.integer :value
      t.date :payment_date

      t.timestamps
    end
  end
end