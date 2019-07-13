class CreateChargerTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :charger_types do |t|
      t.string :name
      t.string :description
      t.string :voltage_output
      t.string :amperage_output
      t.boolean :grounded
      t.string :connector_type

      t.timestamps
    end
  end
end
