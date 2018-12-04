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

ActiveRecord::Schema.define(version: 2018_12_04_032906) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "manager", default: false, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "chapters", force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.string "description"
    t.text "body"
    t.string "lesson"
    t.boolean "featured", default: false
    t.boolean "approval", default: true
    t.string "thumbnail_file_name"
    t.string "thumbnail_content_type"
    t.bigint "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.string "video_file_name"
    t.string "video_content_type"
    t.bigint "video_file_size"
    t.datetime "video_updated_at"
    t.integer "comments_count"
    t.integer "views_count"
    t.bigint "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_chapters_on_lesson_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "content"
    t.integer "replies_count"
    t.bigint "chapter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_comments_on_chapter_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.string "course_slug"
    t.string "description"
    t.boolean "featured", default: false
    t.boolean "approval", default: true
  end

  create_table "examinations", force: :cascade do |t|
    t.string "exam_type"
    t.integer "exam_id"
    t.string "exam_url"
    t.decimal "score", precision: 10
    t.string "time"
    t.boolean "received", default: false, null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id", "user_id"], name: "index_examinations_on_exam_id_and_user_id", unique: true
    t.index ["user_id"], name: "index_examinations_on_user_id"
  end

  create_table "follows", force: :cascade do |t|
    t.string "chapter_title"
    t.integer "chapter_id"
    t.string "chapter_url"
    t.boolean "followed", default: false, null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id", "user_id"], name: "index_follows_on_chapter_id_and_user_id", unique: true
    t.index ["user_id"], name: "index_follows_on_user_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.string "lesson_slug"
    t.string "description"
    t.string "author"
    t.integer "chapters_count"
    t.boolean "featured", default: false
    t.boolean "approval", default: true
    t.bigint "topic_id"
    t.index ["topic_id"], name: "index_lessons_on_topic_id"
  end

  create_table "logs", force: :cascade do |t|
    t.string "log_type"
    t.string "lesson_id"
    t.integer "chapter_id"
    t.string "chapter_url"
    t.integer "exam_id"
    t.string "exam_url"
    t.boolean "received", default: false, null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id", "exam_id", "user_id"], name: "index_logs_on_chapter_id_and_exam_id_and_user_id", unique: true
    t.index ["user_id"], name: "index_logs_on_user_id"
  end

  create_table "replies", force: :cascade do |t|
    t.string "admin"
    t.string "email"
    t.string "content"
    t.bigint "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_replies_on_comment_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
    t.string "topic_slug"
    t.string "description"
    t.integer "course_id"
    t.boolean "featured", default: false
    t.boolean "approval", default: true
    t.string "thumbnail_file_name"
    t.string "thumbnail_content_type"
    t.bigint "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username"
    t.string "name"
    t.string "phone"
    t.integer "team"
    t.integer "role"
    t.integer "logs_count"
    t.integer "follows_count"
    t.integer "examinations_count"
    t.integer "level", default: 1, null: false
    t.boolean "block", default: false, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "chapters", "lessons"
  add_foreign_key "comments", "chapters"
  add_foreign_key "examinations", "users"
  add_foreign_key "follows", "users"
  add_foreign_key "lessons", "topics"
  add_foreign_key "logs", "users"
  add_foreign_key "replies", "comments"
end
