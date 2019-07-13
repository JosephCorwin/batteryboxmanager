class MoveDataFromChargerTypesToChargers < ActiveRecord::Migration[5.0]
  def change

  	add_column :chargers, :connector_type, :string
  	remove_column :charger_types, :connector_type
  	
  end
end
