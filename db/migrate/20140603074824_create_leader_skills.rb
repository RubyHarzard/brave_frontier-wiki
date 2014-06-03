class CreateLeaderSkills < ActiveRecord::Migration
  def change
    create_table :leader_skills do |t|
      t.string :title
      t.text :details
    end
  end
end
