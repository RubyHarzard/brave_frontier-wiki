class CreateUnitLeaderSkills < ActiveRecord::Migration
  def change
    create_table :unit_leader_skills do |t|
      t.references :unit
      t.references :leader_skill
    end
  end
end
