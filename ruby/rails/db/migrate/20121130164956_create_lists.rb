class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title, null: false, unique: true
      t.string :permalink, null: false, unique: true

      t.timestamps
    end
  end
end
