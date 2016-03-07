class CreateRedemptions < ActiveRecord::Migration
  def change
    create_table :redemptions do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.references :reward, index: true, foreign_key: true, null: false
      t.datetime :time, null: false

      t.timestamps null: false
    end
  end
end
