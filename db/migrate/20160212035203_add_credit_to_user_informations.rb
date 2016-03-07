class AddCreditToUserInformations < ActiveRecord::Migration
  def change
  	add_column :user_informations, :credit, :integer, null: false, default: 0
  end
end
