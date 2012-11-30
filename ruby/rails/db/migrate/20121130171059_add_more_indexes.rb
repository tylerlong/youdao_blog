class AddMoreIndexes < ActiveRecord::Migration
  def change
    add_index :lists, :title, unique: true
    add_index :menuitems, [:ref_type, :ref_id], unique: true
    add_index :pages, :youdao_url, unique: true
  end
end
