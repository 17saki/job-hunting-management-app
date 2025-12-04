# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_11_25_071403) do
  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "interest"
    t.string "choice"
    t.string "situation"
    t.string "schedule"
    t.string "date_c"
    t.string "time_c"
    t.string "detail"
    t.string "memo_c"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "starttime_c"
    t.string "endtime_c"
  end

  create_table "todos", force: :cascade do |t|
    t.string "date_t"
    t.string "time_t"
    t.string "name"
    t.string "do"
    t.string "memo_t"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
