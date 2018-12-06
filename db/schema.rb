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

ActiveRecord::Schema.define(version: 2018_12_05_180002) do

  create_table "file_uploads", force: :cascade do |t|
    t.integer "user_id"
    t.string "given_name"
    t.string "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_file_uploads_on_user_id"
  end

  create_table "record_logs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "scholarship_guide_id"
    t.string "scholarship_name"
    t.integer "saved"
    t.integer "completed"
    t.integer "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "started"
    t.index ["scholarship_guide_id"], name: "index_record_logs_on_scholarship_guide_id"
    t.index ["user_id"], name: "index_record_logs_on_user_id"
  end

  create_table "saved_scholarships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "scholarship_guide_id"
    t.string "scholarship_name"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scholarship_guide_id"], name: "index_saved_scholarships_on_scholarship_guide_id"
    t.index ["user_id"], name: "index_saved_scholarships_on_user_id"
  end

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
    t.string "program_url"
    t.string "location"
    t.integer "diversity"
    t.integer "low_income"
    t.integer "STEM"
    t.integer "DACA"
    t.integer "freshman"
    t.integer "sophomore"
    t.integer "junior"
    t.integer "senior"
  end

  create_table "started_scholarships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "scholarship_guide_id"
    t.string "scholarship_name"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "aasm_state"
    t.index ["scholarship_guide_id"], name: "index_started_scholarships_on_scholarship_guide_id"
    t.index ["status"], name: "index_started_scholarships_on_status"
    t.index ["user_id"], name: "index_started_scholarships_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "scholarship_id"
    t.string "scholarship_name"
    t.string "text"
    t.string "status"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_given_name"
    t.index ["scholarship_id"], name: "index_tasks_on_scholarship_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "user_task_items", force: :cascade do |t|
    t.integer "user_id"
    t.integer "task_id"
    t.integer "scholarship_id"
    t.string "scholarship_name"
    t.string "text"
    t.string "status"
    t.integer "file_id"
    t.string "file_given_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "started_scholarship_id"
    t.index ["file_id"], name: "index_user_task_items_on_file_id"
    t.index ["scholarship_id"], name: "index_user_task_items_on_scholarship_id"
    t.index ["task_id"], name: "index_user_task_items_on_task_id"
    t.index ["user_id"], name: "index_user_task_items_on_user_id"
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
    t.integer "is_admin"
    t.string "school"
    t.string "grade"
  end

end
