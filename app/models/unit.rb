class Unit < ActiveRecord::Base
  belongs_to :before_evo_unit, :class_name => 'Unit'

  has_one :unit_leader_skill
  has_one :leader_skill, :through => :unit_leader_skill
  has_one :evolution_recipe
  has_one :after_evo_unit, :through => :evolution_recipe, :class_name => 'Unit'
  has_many :statuses
end
