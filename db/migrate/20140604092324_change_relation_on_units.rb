class ChangeRelationOnUnits < ActiveRecord::Migration
  def up
    remove_column :evolution_recipes, :before_evo_unit_id
    add_column :units, :before_evo_unit_id, :integer, :after => :id
  end

  def down
    remove_column :units, :before_evo_unit_id
    add_column :evolution_recipes, :before_evo_unit_id, :integer, :after => :unit_id
  end
end
