# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140819104439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auth_group", force: true do |t|
    t.string "name", limit: 80, null: false
  end

  add_index "auth_group", ["name"], name: "auth_group_name_key", unique: true, using: :btree
  add_index "auth_group", ["name"], name: "auth_group_name_like", using: :btree

  create_table "auth_group_permissions", force: true do |t|
    t.integer "group_id",      null: false
    t.integer "permission_id", null: false
  end

  add_index "auth_group_permissions", ["group_id", "permission_id"], name: "auth_group_permissions_group_id_permission_id_key", unique: true, using: :btree
  add_index "auth_group_permissions", ["group_id"], name: "auth_group_permissions_group_id", using: :btree
  add_index "auth_group_permissions", ["permission_id"], name: "auth_group_permissions_permission_id", using: :btree

  create_table "auth_permission", force: true do |t|
    t.string  "name",            limit: 50,  null: false
    t.integer "content_type_id",             null: false
    t.string  "codename",        limit: 100, null: false
  end

  add_index "auth_permission", ["content_type_id", "codename"], name: "auth_permission_content_type_id_codename_key", unique: true, using: :btree
  add_index "auth_permission", ["content_type_id"], name: "auth_permission_content_type_id", using: :btree

  create_table "auth_user", force: true do |t|
    t.string   "password",     limit: 128, null: false
    t.datetime "last_login",               null: false
    t.boolean  "is_superuser",             null: false
    t.string   "username",     limit: 30,  null: false
    t.string   "first_name",   limit: 30,  null: false
    t.string   "last_name",    limit: 30,  null: false
    t.string   "email",        limit: 75,  null: false
    t.boolean  "is_staff",                 null: false
    t.boolean  "is_active",                null: false
    t.datetime "date_joined",              null: false
  end

  add_index "auth_user", ["username"], name: "auth_user_username_key", unique: true, using: :btree
  add_index "auth_user", ["username"], name: "auth_user_username_like", using: :btree

  create_table "auth_user_groups", force: true do |t|
    t.integer "user_id",  null: false
    t.integer "group_id", null: false
  end

  add_index "auth_user_groups", ["group_id"], name: "auth_user_groups_group_id", using: :btree
  add_index "auth_user_groups", ["user_id", "group_id"], name: "auth_user_groups_user_id_group_id_key", unique: true, using: :btree
  add_index "auth_user_groups", ["user_id"], name: "auth_user_groups_user_id", using: :btree

  create_table "auth_user_user_permissions", force: true do |t|
    t.integer "user_id",       null: false
    t.integer "permission_id", null: false
  end

  add_index "auth_user_user_permissions", ["permission_id"], name: "auth_user_user_permissions_permission_id", using: :btree
  add_index "auth_user_user_permissions", ["user_id", "permission_id"], name: "auth_user_user_permissions_user_id_permission_id_key", unique: true, using: :btree
  add_index "auth_user_user_permissions", ["user_id"], name: "auth_user_user_permissions_user_id", using: :btree

  create_table "django_admin_log", force: true do |t|
    t.datetime "action_time",                 null: false
    t.integer  "user_id",                     null: false
    t.integer  "content_type_id"
    t.text     "object_id"
    t.string   "object_repr",     limit: 200, null: false
    t.integer  "action_flag",     limit: 2,   null: false
    t.text     "change_message",              null: false
  end

  add_index "django_admin_log", ["content_type_id"], name: "django_admin_log_content_type_id", using: :btree
  add_index "django_admin_log", ["user_id"], name: "django_admin_log_user_id", using: :btree

  create_table "django_content_type", force: true do |t|
    t.string "name",      limit: 100, null: false
    t.string "app_label", limit: 100, null: false
    t.string "model",     limit: 100, null: false
  end

  add_index "django_content_type", ["app_label", "model"], name: "django_content_type_app_label_model_key", unique: true, using: :btree

  create_table "django_session", id: false, force: true do |t|
    t.string   "session_key",  limit: 40, null: false
    t.text     "session_data",            null: false
    t.datetime "expire_date",             null: false
  end

  add_index "django_session", ["expire_date"], name: "django_session_expire_date", using: :btree
  add_index "django_session", ["session_key"], name: "django_session_session_key_like", using: :btree

  create_table "sellers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "sellers", ["email"], name: "index_sellers_on_email", unique: true, using: :btree
  add_index "sellers", ["remember_token"], name: "index_sellers_on_remember_token", using: :btree

  create_table "sellers_seller", force: true do |t|
    t.string "name",                null: false
    t.string "email",               null: false
    t.string "username", limit: 30, null: false
    t.string "password", limit: 15, null: false
    t.string "website",             null: false
  end

  add_index "sellers_seller", ["username"], name: "sellers_seller_username_key", unique: true, using: :btree
  add_index "sellers_seller", ["username"], name: "sellers_seller_username_like", using: :btree

  create_table "south_migrationhistory", force: true do |t|
    t.string   "app_name",  null: false
    t.string   "migration", null: false
    t.datetime "applied",   null: false
  end

end
