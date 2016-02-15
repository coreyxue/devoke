class CreateChangelogs < ActiveRecord::Migration
  def change
    create_table :changelogs do |t|
      t.string :obj_type, null: false
      t.integer :obj_id, null: false
      t.datetime :time, null: false
      t.text :message, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
