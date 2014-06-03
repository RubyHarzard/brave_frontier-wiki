class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.references :leader_skill
      t.integer :number
      t.integer :star
      t.string :element
      t.string :name
      t.integer :max_level
      t.integer :cost
      t.string :brave_burst_type
      t.string :brave_burst_title
      t.string :brave_burst_details
      t.string :super_brave_burst_title
      t.string :super_brave_burst_details
      t.text :biography
    end
  end
end
