class AddUnitIdToEvolutionRecipes < ActiveRecord::Migration
  def change
    add_column :evolution_recipes, :unit_id, :integer, :after => :id
  end
end
