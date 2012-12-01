class RemoveSnippetFromPages < ActiveRecord::Migration
  def change
    remove_column :pages, :snippet
  end
end
