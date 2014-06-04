class UnitSerializer < ActiveModel::Serializer
  attributes :number, :star, :element, :name, :max_level, :cost, :hit_count, :biography,
             :brave_burst_type, :brave_burst_title, :brave_burst_details,
             :super_brave_burst_title, :super_brave_burst_details

  has_one :leader_skill
  has_many :statuses

  has_one :evolution_recipe
  has_one :before_evo_unit
  has_one :after_evo_unit

  def filter(keys)
    unless object.evolution_recipe
      keys.delete :evolution_recipe
      keys.delete :after_evo_unit
    end

    keys.delete :before_evo_unit unless object.before_evo_unit
    keys
  end
end
