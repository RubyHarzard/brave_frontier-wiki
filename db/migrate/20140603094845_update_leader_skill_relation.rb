class UpdateLeaderSkillRelation < ActiveRecord::Migration
  def up
    remove_column :units, :leader_skill_id
  end

  def down
    add_column :units, :leader_skill_id, :integer
  end
end
