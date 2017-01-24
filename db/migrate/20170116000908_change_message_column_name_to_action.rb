class ChangeMessageColumnNameToAction < ActiveRecord::Migration
  def change
  	remove_column :changelogs, :message
  	add_column :changelogs, :action, :integer
  end
end
