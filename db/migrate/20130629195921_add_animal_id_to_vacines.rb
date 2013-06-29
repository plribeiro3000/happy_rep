class AddAnimalIdToVacines < ActiveRecord::Migration
  def change
    add_column :vacines, :animal_id, :integer, :references => :animals
  end
end