class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :rider
      t.string :battery
      t.string :charger

      t.timestamps
    end
  end
end
