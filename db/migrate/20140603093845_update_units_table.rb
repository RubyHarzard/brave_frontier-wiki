class UpdateUnitsTable < ActiveRecord::Migration
  def change
    change_column_default :units, :brave_burst_type, 'Offense'
    add_column :units, :hit_count, :integer, :after => :cost
  end
end
