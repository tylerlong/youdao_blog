class AlterTableMenuitem < ActiveRecord::Migration
  def change
    remove_column :menuitems, :ref_type
    remove_column :menuitems, :ref_id
    add_column :menuitems, :permalink, :string, null: false, default: ""
  end
end