class AddColumnsToMenuitems < ActiveRecord::Migration
  def change
    add_column :menuitems, :title, :string, null: false, default: ""
    change_column_default :menuitems, :title, nil
  end
end
