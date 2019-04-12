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

ActiveRecord::Schema.define(version: 2019_04_12_021155) do

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "admin_type"
    t.datetime "last_access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blacklists", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_blacklists_on_user_id"
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

  create_table "file_attachments", force: :cascade do |t|
    t.integer "post_id"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_file_attachments_on_post_id"
  end

  create_table "geofences", force: :cascade do |t|
    t.integer "admin_id"
    t.string "geofence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_geofences_on_admin_id"
  end

  create_table "images", force: :cascade do |t|
    t.integer "post_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_images_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "content"
    t.string "country"
    t.string "city"
    t.string "gps_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "picture"
    t.text "biography"
    t.string "country"
    t.string "city"
    t.string "gps_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suspension_lists", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_suspension_lists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.string "last_login"
    t.string "datetime"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "last_name"
    t.index ["profile_id"], name: "index_users_on_profile_id"
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
