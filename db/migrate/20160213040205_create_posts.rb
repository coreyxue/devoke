class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.integer :mood, default: -1
      t.text :message, null: false

      t.timestamps null: false
    end
  end
end
