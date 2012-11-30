class AlterIndexes < ActiveRecord::Migration
  def change
    remove_index :pages, :permalink
    remove_index :lists, :permalink
    add_index :pages, :permalink, unique: true
    add_index :lists, :permalink, unique: true
    change_column_default :pages, :permalink, nil
  end
end
