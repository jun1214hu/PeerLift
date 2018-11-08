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

ActiveRecord::Schema.define(version: 2018_11_08_015617) do

  create_table "scholarship_guides", force: :cascade do |t|
    t.string "program_name"
    t.string "image_url"
    t.string "metric_box1"
    t.string "metric_box2"
    t.string "metric_box3"
    t.string "description_short"
    t.string "description_long"
    t.integer "app_count"
    t.integer "essay_count"
    t.integer "transcript_count"
    t.integer "resume_count"
    t.string "time_estimate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end


  create_table "user_tasks", force: :cascade do |t|
    t.string "scholarship_name"
    t.integer "essay_count"
    t.integer "transcript_count"
    t.integer "test_score_count"
    t.string "test_subjects"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "scholarship_guide_id"
    t.index ["scholarship_guide_id"], name: "index_user_tasks_on_scholarship_guide_id"
    t.index ["user_id"], name: "index_user_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "email"
    t.string "first_name"
    t.string "last_name"

    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
