class AddDisplayColToChangelogs < ActiveRecord::Migration
  def change
  	add_column :changelogs, :display, :boolean, default: false
  end
end
