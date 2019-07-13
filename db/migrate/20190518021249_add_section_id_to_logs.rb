class AddSectionIdToLogs < ActiveRecord::Migration[5.0]
  def change

  	add_column :logs, :section_id, :belongs_to
  end
end
