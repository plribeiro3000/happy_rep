class AddRestitutionIdToBills < ActiveRecord::Migration
  def change
    add_column :bills, :restitution_id, :integer, :references => :restitution
  end
end