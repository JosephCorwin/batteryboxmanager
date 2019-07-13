class CreateBatteryTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :battery_types do |t|
      t.string :name
      t.string :description
      t.string :cell_type
      t.integer :cell_count
      t.boolean :bms_present
      t.decimal :nominal_voltage
      t.decimal :minimum_voltage
      t.decimal :maximum_voltage
      t.integer :amp_hours

      t.timestamps
    end
  end
end
