class FixLogsTable < ActiveRecord::Migration[5.0]
  def change

  	remove_column :logs, :type
  	add_column :logs, :log_type, :string
  	
  end
end
