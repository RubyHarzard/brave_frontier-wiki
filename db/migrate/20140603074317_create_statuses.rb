class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.references :unit
      t.string :unit_type
      t.integer :hit_point
      t.integer :attack
      t.integer :defense
      t.integer :recovery
    end
  end
end
