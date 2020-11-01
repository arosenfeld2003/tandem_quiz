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

ActiveRecord::Schema.define(version: 2020_10_31_215250) do

  create_table "answers", force: :cascade do |t|
    t.text "value"
    t.boolean "correct"
    t.integer "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "active"
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "level"
    t.integer "score"
    t.boolean "active"
    t.string "player"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "question_count"
  end

  create_table "questions", force: :cascade do |t|
    t.text "value"
    t.boolean "asked"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "active"
  end

  add_foreign_key "answers", "questions"
end
