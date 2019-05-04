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

ActiveRecord::Schema.define(version: 2019_05_04_163226) do

  create_table "admins", force: :cascade do |t|
    t.integer "user_id"
    t.string "geofence"
    t.boolean "super_admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_admins_on_user_id"
  end

  create_table "blacklists", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "exit_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_blacklists_on_user_id"
  end

  create_table "block_lists", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "exit_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_block_lists_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.integer "comment_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_comments_on_comment_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "dumpsters", force: :cascade do |t|
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_dumpsters_on_post_id"
  end

  create_table "follows", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_follows_on_post_id"
    t.index ["user_id"], name: "index_follows_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "content"
    t.string "city"
    t.string "country"
    t.string "gps_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id"
    t.text "biography"
    t.string "country"
    t.string "city"
    t.string "image"
    t.string "gps_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "reports", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_reports_on_post_id"
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "shared_posts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_shared_posts_on_post_id"
    t.index ["user_id"], name: "index_shared_posts_on_user_id"
  end

  create_table "suspension_lists", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "exit_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_suspension_lists_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_tags_on_comment_id"
    t.index ["post_id"], name: "index_tags_on_post_id"
    t.index ["user_id"], name: "index_tags_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.datetime "last_access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "validations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.string "validation_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_validations_on_post_id"
    t.index ["user_id"], name: "index_validations_on_user_id"
  end

end