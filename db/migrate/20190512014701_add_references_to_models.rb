class AddReferencesToModels < ActiveRecord::Migration[5.0]
  def change
     
     add_column :batteries, :rider_id, :belongs_to
     add_column :batteries, :battery_type_id, :belongs_to
     add_column :chargers, :rider_id, :belongs_to
     add_column :chargers, :charger_type_id, :belongs_to
     add_column :logs, :rider_id, :belongs_to
     add_column :logs, :battery_id, :belongs_to
     add_column :logs, :charger_id, :belongs_to

  end
end
