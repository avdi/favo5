# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_25_031001) do

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.integer "canvass_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["canvass_id"], name: "index_candidates_on_canvass_id"
  end

  create_table "canvasses", force: :cascade do |t|
    t.string "question"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "priorities", force: :cascade do |t|
    t.string "tag"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "priorities_votes", id: false, force: :cascade do |t|
    t.integer "vote_id", null: false
    t.integer "priority_id", null: false
  end

  create_table "qualities", force: :cascade do |t|
    t.string "tag"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "qualities_votes", id: false, force: :cascade do |t|
    t.integer "vote_id", null: false
    t.integer "quality_id", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer "candidate_id", null: false
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "canvass_id"
    t.index ["candidate_id"], name: "index_votes_on_candidate_id"
    t.index ["canvass_id"], name: "index_votes_on_canvass_id"
  end

  add_foreign_key "votes", "candidates"
  add_foreign_key "votes", "canvasses"
end
