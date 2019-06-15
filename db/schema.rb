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

ActiveRecord::Schema.define(version: 2019_06_15_071624) do

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "canvasses", force: :cascade do |t|
    t.string "question"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "qualities", force: :cascade do |t|
    t.string "tag"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer "candidate_id", null: false
    t.integer "primary_quality_id"
    t.integer "secondary_quality_id"
    t.integer "tertiary_quality_id"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["candidate_id"], name: "index_votes_on_candidate_id"
    t.index ["primary_quality_id"], name: "index_votes_on_primary_quality_id"
    t.index ["secondary_quality_id"], name: "index_votes_on_secondary_quality_id"
    t.index ["tertiary_quality_id"], name: "index_votes_on_tertiary_quality_id"
  end

  add_foreign_key "votes", "candidates"
  add_foreign_key "votes", "qualities", column: "primary_quality_id"
  add_foreign_key "votes", "qualities", column: "secondary_quality_id"
  add_foreign_key "votes", "qualities", column: "tertiary_quality_id"
end
