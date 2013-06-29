class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.date :realization_date
   t.float :value
t.string :dweller
t.date :payment_date

t.timestamps
end
end
end
