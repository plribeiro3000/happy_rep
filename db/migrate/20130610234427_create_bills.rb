class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :kind
      t.float :value
      t.date :expiration_date
      t.date :pay_date
      t.float :penalty
      t.float :interest

      t.timestamps
    end
  end
end
