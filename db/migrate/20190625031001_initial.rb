class Initial < ActiveRecord::Migration[6.0]
  def change
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

    create_table "priorities", force: :cascade do |t|
      t.string "tag"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end

    create_table "priorities_votes", id: false, force: :cascade do |t|
      t.integer "vote_id", null: false
      t.integer "priority_id", null: false
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
end
