class StatusSerializer < ActiveModel::Serializer
  attributes :unit_type, :hit_point, :attack, :defense, :recovery
end
