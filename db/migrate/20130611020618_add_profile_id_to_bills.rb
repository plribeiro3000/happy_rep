class AddProfileIdToBills < ActiveRecord::Migration
  def change
    change_table :bills do |t|
      t.references :profile
    end
  end
end
