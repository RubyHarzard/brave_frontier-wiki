class UnitLeaderSkill < ActiveRecord::Base
  belongs_to :unit
  belongs_to :leader_skill
end
