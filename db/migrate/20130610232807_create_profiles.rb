class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.date :birthday
      t.string :cpf
      t.string :college
      t.string :course
      t.date :admission
      t.string :hometown
      t.string :bio
      t.string :phone
      t.string :role
      t.string :address

      t.timestamps
    end
  end
end
