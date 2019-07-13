class CreateCheckIns < ActiveRecord::Migration[5.0]
  def change
    create_table :check_ins do |t|

      t.belongs_to :rider
      t.belongs_to :battery
      t.belongs_to :charger
      t.belongs_to :section
      t.timestamps
    end
  end
end
