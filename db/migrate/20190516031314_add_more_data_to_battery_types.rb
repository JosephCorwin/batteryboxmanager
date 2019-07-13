class AddMoreDataToBatteryTypes < ActiveRecord::Migration[5.0]
  def change

    add_column :battery_types, :output_connector_type, :string
    add_column :battery_types, :charging_connector_type, :string
    add_column :battery_types, :case_material, :string
    add_column :battery_types, :padding_type, :string
    add_column :battery_types, :width, :string
    add_column :battery_types, :length, :string
    add_column :battery_types, :height, :string
    add_column :battery_types, :weight, :string

  end
end
