class CreateEvolutionRecipes < ActiveRecord::Migration
  def change
    create_table :evolution_recipes do |t|
      t.references :before_evo_unit
      t.references :after_evo_unit
      t.integer :price
      t.references :unit_1
      t.references :unit_2
      t.references :unit_3
      t.references :unit_4
      t.references :unit_5
      t.references :unit_5
    end
  end
end
