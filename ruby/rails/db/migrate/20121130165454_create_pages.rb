class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title, null: false
      t.string :snippet, null: false
      t.text :content, null: false
      t.string :youdao_url, null: false
      t.references :list

      t.timestamps
    end
    add_index :pages, :list_id
  end
end
