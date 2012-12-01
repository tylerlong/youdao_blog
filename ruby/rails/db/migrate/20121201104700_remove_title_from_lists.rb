class RemoveTitleFromLists < ActiveRecord::Migration
  def change
    remove_column :lists, :title
  end
end
