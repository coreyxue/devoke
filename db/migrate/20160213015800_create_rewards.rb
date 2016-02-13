class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :name, null: false
      t.text :description
      t.integer :cost, null: false, default: 0
      t.integer :amount, null: false, default: 0

      t.timestamps null: false
    end
  end
end
