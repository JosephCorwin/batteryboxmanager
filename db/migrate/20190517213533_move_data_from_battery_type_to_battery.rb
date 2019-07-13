class MoveDataFromBatteryTypeToBattery < ActiveRecord::Migration[5.0]
  def change

  	add_column :batteries, :input_connector, :string
  	add_column :batteries, :output_connector, :string
  	add_column :batteries, :age, :string
  	add_column :batteries, :notes, :string
    add_column :batteries, :case_material, :string
    add_column :batteries, :padding_type, :string


    remove_column :battery_types, :output_connector_type, :string
    remove_column :battery_types, :charging_connector_type, :string
    remove_column :battery_types, :case_material, :string
    remove_column :battery_types, :padding_type, :string
    remove_column :battery_types, :width, :string
    remove_column :battery_types, :length, :string
    remove_column :battery_types, :height, :string
    remove_column :battery_types, :weight, :string

  end
end
