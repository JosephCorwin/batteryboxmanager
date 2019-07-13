class AddMoreDataToRiders < ActiveRecord::Migration[5.0]
  def change

  	add_column :riders, :phone_number, :string
  	add_column :riders, :lbid, :string
  	add_column :riders, :email, :string
  	
  end
end
