# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121130171059) do

  create_table "lists", :force => true do |t|
    t.string   "title",      :null => false
    t.string   "permalink",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "lists", ["permalink"], :name => "index_lists_on_permalink", :unique => true
  add_index "lists", ["title"], :name => "index_lists_on_title", :unique => true

  create_table "menuitems", :force => true do |t|
    t.string   "ref_type",   :null => false
    t.integer  "ref_id",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "menuitems", ["ref_type", "ref_id"], :name => "index_menuitems_on_ref_type_and_ref_id", :unique => true

  create_table "pages", :force => true do |t|
    t.string   "title",      :null => false
    t.string   "snippet",    :null => false
    t.text     "content",    :null => false
    t.string   "youdao_url", :null => false
    t.integer  "list_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "permalink",  :null => false
  end

  add_index "pages", ["list_id"], :name => "index_pages_on_list_id"
  add_index "pages", ["permalink"], :name => "index_pages_on_permalink", :unique => true
  add_index "pages", ["youdao_url"], :name => "index_pages_on_youdao_url", :unique => true

end
