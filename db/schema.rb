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

ActiveRecord::Schema.define(version: 2022_06_29_155457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "congressional_members", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.string "political_party"
    t.string "years_in_office"
    t.string "image_url"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_congressional_members_on_user_id"
  end

  create_table "key_issues", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "upvote"
    t.integer "downvote"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posted_issues", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "upvote"
    t.integer "downvote"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_key_issues", force: :cascade do |t|
    t.boolean "isUpvote"
    t.boolean "isDownvote"
    t.bigint "user_id", null: false
    t.bigint "key_issue_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["key_issue_id"], name: "index_user_key_issues_on_key_issue_id"
    t.index ["user_id"], name: "index_user_key_issues_on_user_id"
  end

  create_table "user_posted_issues", force: :cascade do |t|
    t.boolean "isUpvote"
    t.boolean "isDownvote"
    t.bigint "user_id", null: false
    t.bigint "posted_issue_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["posted_issue_id"], name: "index_user_posted_issues_on_posted_issue_id"
    t.index ["user_id"], name: "index_user_posted_issues_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "district"
    t.string "username"
    t.string "password_digest"
    t.boolean "isCongressional"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "congressional_members", "users"
  add_foreign_key "user_key_issues", "key_issues"
  add_foreign_key "user_key_issues", "users"
  add_foreign_key "user_posted_issues", "posted_issues"
  add_foreign_key "user_posted_issues", "users"
end
