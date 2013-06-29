class CreateRestitutions < ActiveRecord::Migration
  def change
    create_table :restitutions do |t|
      t.string :item
      t.date :date
      t.string :problem
      t.string :solution
      t.float :value

      t.timestamps
    end
  end
end