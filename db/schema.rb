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

ActiveRecord::Schema.define(version: 20170520172057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "histories", force: :cascade do |t|
    t.bigint "user_id"
    t.boolean "stolen"
    t.boolean "friends"
    t.boolean "clothes"
    t.integer "eaten"
    t.boolean "trash"
    t.boolean "new_conditions"
    t.boolean "health_condition"
    t.string "health_condition_note"
    t.boolean "appointments"
    t.boolean "depressed"
    t.boolean "mental_health"
    t.string "mental_health_note"
    t.boolean "new_habit"
    t.string "new_habit_note"
    t.boolean "AA_NA"
    t.boolean "social_circle"
    t.boolean "communicate_needs"
    t.integer "cooperate"
    t.datetime "created_at", null: false
    t.integer "housing_situation"
    t.datetime "updated_at", null: false
    t.text "comments"
    t.index ["user_id"], name: "index_histories_on_user_id"
  end

  create_table "reports", force: :cascade do |t|
    t.bigint "user_id"
    t.boolean "meetings"
    t.boolean "arrested"
    t.boolean "medicated"
    t.boolean "indoors"
    t.boolean "bathed"
    t.boolean "clothes"
    t.boolean "drugs"
    t.boolean "income"
    t.boolean "apply_benefits"
    t.boolean "verbal_arguments"
    t.boolean "fights"
    t.boolean "ems"
    t.boolean "hospital"
    t.boolean "medical_condition"
    t.integer "weeks_homeless"
    t.datetime "created_at", null: false
    t.integer "sentiment"
    t.datetime "updated_at", null: false
    t.text "notes"
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.boolean "admin", default: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "profession"
    t.string "marital_status"
    t.boolean "hiv"
    t.boolean "veteran"
    t.boolean "immigrant"
  end

end
