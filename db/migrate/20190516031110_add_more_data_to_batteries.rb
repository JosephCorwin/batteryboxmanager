class AddMoreDataToBatteries < ActiveRecord::Migration[5.0]
  def change

    add_column :batteries, :inspection_grade, :string
    add_column :batteries, :rental, :boolean
    add_column :batteries, :rental_owner, :string

  end
end
