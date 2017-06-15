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

ActiveRecord::Schema.define(version: 20170615140957) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.string   "bookmarkee_type"
    t.integer  "bookmarkee_id"
    t.string   "bookmarker_type"
    t.integer  "bookmarker_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["bookmarkee_id", "bookmarkee_type", "bookmarker_id", "bookmarker_type"], name: "bookmarks_bookmarkee_bookmarker_idx", unique: true, using: :btree
    t.index ["bookmarkee_id", "bookmarkee_type"], name: "bookmarks_bookmarkee_idx", using: :btree
    t.index ["bookmarkee_type", "bookmarkee_id"], name: "index_bookmarks_on_bookmarkee_type_and_bookmarkee_id", using: :btree
    t.index ["bookmarker_id", "bookmarker_type"], name: "bookmarks_bookmarker_idx", using: :btree
    t.index ["bookmarker_type", "bookmarker_id"], name: "index_bookmarks_on_bookmarker_type_and_bookmarker_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_tags", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_category_tags_on_category_id", using: :btree
  end

  create_table "chatroom_users", force: :cascade do |t|
    t.integer  "chatroom_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["chatroom_id"], name: "index_chatroom_users_on_chatroom_id", using: :btree
    t.index ["user_id"], name: "index_chatroom_users_on_user_id", using: :btree
  end

  create_table "chatrooms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "chatroom_id"
    t.integer  "user_id"
    t.integer  "post_id"
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id", using: :btree
    t.index ["post_id"], name: "index_messages_on_post_id", using: :btree
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "planevents", force: :cascade do |t|
    t.string   "planeventtitle"
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "published_at"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "category_tag_id"
    t.string   "header_image"
    t.index ["category_id"], name: "index_posts_on_category_id", using: :btree
    t.index ["category_tag_id"], name: "index_posts_on_category_tag_id", using: :btree
    t.index ["user_id"], name: "index_posts_on_user_id", using: :btree
  end

  create_table "synchromesh_connections", force: :cascade do |t|
    t.string   "channel"
    t.string   "session"
    t.datetime "created_at"
    t.datetime "expires_at"
    t.datetime "refresh_at"
  end

  create_table "synchromesh_queued_messages", force: :cascade do |t|
    t.text    "data"
    t.integer "connection_id"
  end

  create_table "titles", force: :cascade do |t|
    t.text     "body"
    t.datetime "published_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "superadmin_role",        default: false
    t.boolean  "supervisor_role",        default: false
    t.boolean  "user_role",              default: true
    t.boolean  "editors_role",           default: false
    t.boolean  "writers_role",           default: false
    t.boolean  "dev_role",               default: false
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "category_tags", "categories"
  add_foreign_key "chatroom_users", "chatrooms"
  add_foreign_key "chatroom_users", "users"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "posts"
  add_foreign_key "messages", "users"
  add_foreign_key "posts", "categories"
  add_foreign_key "posts", "category_tags"
  add_foreign_key "posts", "users"
end
