class CreateUserInformations < ActiveRecord::Migration
  def change
    create_table :user_informations do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.integer :age
      t.string :gender

      t.timestamps null: false
    end
  end
end
