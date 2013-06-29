class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.date :birth_date
      t.integer :work_card
      t.text :functions
      t.integer :register
      t.text :experience
      t.date :admission_date
      t.float :salary
      t.string :photo
      t.text :about
      t.string :phone
      t.date :demission_date

      t.timestamps
    end
  end
end
