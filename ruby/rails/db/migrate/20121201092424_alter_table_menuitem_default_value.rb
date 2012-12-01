class AlterTableMenuitemDefaultValue < ActiveRecord::Migration
  def change
    change_column_default :menuitems, :permalink, nil
  end
end
