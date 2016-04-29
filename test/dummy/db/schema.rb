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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160429053614) do

  create_table "rubin_embedlies", force: :cascade do |t|
    t.string   "title"
    t.string   "provider"
    t.string   "original_url"
    t.text     "code"
    t.string   "preview_file_name"
    t.string   "preview_content_type"
    t.integer  "preview_file_size"
    t.datetime "preview_updated_at"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "rubin_figurable_figures", force: :cascade do |t|
    t.integer  "figurable_id"
    t.string   "figurable_type"
    t.integer  "figure_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "rubin_figurable_figures", ["figurable_type", "figurable_id"], name: "index_rubin_join_figurable"
  add_index "rubin_figurable_figures", ["figure_id"], name: "index_rubin_join_figure"

  create_table "rubin_figures", force: :cascade do |t|
    t.integer  "displayable_id"
    t.string   "displayable_type"
    t.text     "caption"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "rubin_figures", ["displayable_type", "displayable_id"], name: "index_rubin_figures_on_displayable_type_and_displayable_id"

  create_table "rubin_pictures", force: :cascade do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
