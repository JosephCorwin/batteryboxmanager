class CreateChargers < ActiveRecord::Migration[5.0]
  def change
    create_table :chargers do |t|
      t.string :lbid

      t.timestamps
    end
  end
end
