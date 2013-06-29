class CreatePersonalBills < ActiveRecord::Migration
  def change
    create_table :personal_bills do |t|
      t.string :name
      t.string :description
      t.integer :value
      t.date :payment_date

      t.timestamps
    end
  end
end
