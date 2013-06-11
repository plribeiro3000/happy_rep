class AddProfileIdToBooks < ActiveRecord::Migration
  def change
    change_table :books do |t|
      t.references :profile
    end
  end
end
