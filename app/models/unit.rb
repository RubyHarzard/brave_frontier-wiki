class Unit < ActiveRecord::Base
  belongs_to :leader_skill

  has_one :evolution_recipe
  has_one :before_evo_unit, :source => :evolution_recipe, :class_name => 'Unit'
  has_one :after_evo_unit, :source => :evolution_recipe, :class_name => 'Unit'
  has_many :statuses
end
