class CreateMenuitems < ActiveRecord::Migration
  def change
    create_table :menuitems do |t|
      t.string :ref_type, null: false
      t.integer :ref_id, null: false

      t.timestamps
    end
  end
end
