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

ActiveRecord::Schema.define(version: 2018_10_26_075922) do

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", comment: "用户表", force: :cascade do |t|
    t.string "account", null: false, comment: "账户名"
    t.string "password_digest", null: false, comment: "密码"
    t.string "email", null: false, comment: "邮箱"
    t.string "qq", null: false, comment: "qq"
    t.string "mobile", null: false, comment: "电话"
    t.datetime "deleted_at", comment: "删除时间"
    t.string "token", comment: "令牌"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
