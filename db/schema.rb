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

ActiveRecord::Schema.define(version: 20151119210440) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "company_id", limit: 4
    t.string   "street1",    limit: 100, null: false
    t.string   "street2",    limit: 100, null: false
    t.string   "city",       limit: 50,  null: false
    t.string   "state",      limit: 50,  null: false
    t.string   "zip",        limit: 25,  null: false
    t.string   "country",    limit: 50,  null: false
    t.string   "geo_tag",    limit: 100, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "company_name",  limit: 100, null: false
    t.string   "company_hours", limit: 50,  null: false
    t.integer  "resource_id",   limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "companyaddresses", force: :cascade do |t|
    t.integer  "company_id", limit: 4
    t.integer  "address_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "phone",        limit: 255
    t.string   "phone_type",   limit: 255
    t.string   "website",      limit: 100, null: false
    t.string   "email",        limit: 50,  null: false
    t.string   "contact_name", limit: 50,  null: false
    t.integer  "company_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "size",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "loginabilities", force: :cascade do |t|
    t.string   "login",        limit: 50, null: false
    t.string   "password",     limit: 50, null: false
    t.boolean  "readaccess"
    t.boolean  "createaccess"
    t.boolean  "editaccess"
    t.boolean  "deleteaccess"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string   "resource_name", limit: 50,  null: false
    t.string   "resource_type", limit: 50,  null: false
    t.string   "description",   limit: 200, null: false
    t.integer  "user_id",       limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name",     limit: 50, null: false
    t.string   "user_password", limit: 50, null: false
    t.integer  "userType_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "usertypes", force: :cascade do |t|
    t.string   "admin_user",   limit: 255
    t.string   "company_user", limit: 255
    t.string   "basic_user",   limit: 255
    t.integer  "ability_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
