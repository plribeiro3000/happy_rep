class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.string :race
      t.date :birth_date

      t.timestamps
    end
  end
end
