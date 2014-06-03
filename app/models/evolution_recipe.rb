class EvolutionRecipe < ActiveRecord::Base
  belongs_to :before_evo_unit, :class_name => 'Unit'
  belongs_to :after_evo_unit, :class_name => 'Unit'

  belongs_to :unit_1, :class_name => 'Unit'
  belongs_to :unit_2, :class_name => 'Unit'
  belongs_to :unit_3, :class_name => 'Unit'
  belongs_to :unit_4, :class_name => 'Unit'
  belongs_to :unit_5, :class_name => 'Unit'
end
