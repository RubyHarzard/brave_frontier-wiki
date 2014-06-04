class UnitSerializer < ActiveModel::Serializer
  attributes :number, :star, :element, :name, :max_level, :cost, :hit_count, :biography,
             :brave_burst_type, :brave_burst_title, :brave_burst_details,
             :super_brave_burst_title, :super_brave_burst_details

  has_one :leader_skill
  has_one :evolution_recipe
  has_one :before_evo_unit
  has_one :after_evo_unit
  has_many :statuses
end
