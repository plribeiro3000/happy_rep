class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.integer :work_card
      t.integer :register
      t.date :admission_date
      t.float :salary
      t.string :phone
      t.date :demission_date

      t.timestamps
    end
  end
end
