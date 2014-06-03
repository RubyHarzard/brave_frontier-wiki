class Unit < ActiveRecord::Base
  has_one :unit_leader_skills
  has_one :leader_skill, :through => :leader_skill
  has_one :evolution_recipe
  has_one :before_evo_unit, :source => :evolution_recipe, :class_name => 'Unit'
  has_one :after_evo_unit, :source => :evolution_recipe, :class_name => 'Unit'
  has_many :statuses
end
