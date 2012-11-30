class AddIndexToTables < ActiveRecord::Migration
  def change
    add_column :pages, :permalink, :string, null: false, unique: true, default: ""
    add_index :lists, :permalink
    add_index :pages, :permalink
    change_column :pages, :youdao_url, :string, null: false, unique: true
  end
end
