class RemoveValueFromRestitutions < ActiveRecord::Migration
  def up
    remove_column :restitutions, :value
  end

  def down
    add_column :restitutions, :value, :float
  end
end