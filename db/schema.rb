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

ActiveRecord::Schema.define(version: 20131009224438) do

  create_table "answers", force: true do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"
  add_index "answers", ["user_id"], name: "index_answers_on_user_id"

  create_table "offerings", force: true do |t|
    t.string   "name"
    t.integer  "offering_type_id"
    t.integer  "city_id"
    t.text     "description"
    t.integer  "location_id"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.integer  "max_enrollment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deadline_at"
    t.integer  "tuition_cost"
    t.integer  "deposit_cost"
    t.string   "code"
  end

  add_index "offerings", ["city_id"], name: "index_offerings_on_city_id"
  add_index "offerings", ["code"], name: "index_offerings_on_code"
  add_index "offerings", ["deadline_at"], name: "index_offerings_on_deadline_at"
  add_index "offerings", ["location_id"], name: "index_offerings_on_location_id"
  add_index "offerings", ["offering_type_id"], name: "index_offerings_on_offering_type_id"

  create_table "question_set_questions", force: true do |t|
    t.integer  "question_id"
    t.integer  "question_set_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "question_set_questions", ["question_id", "question_set_id"], name: "qqq_on_qid_and_qsid"

  create_table "question_sets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "question_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  add_index "questions", ["question_type_id"], name: "index_questions_on_question_type_id"

  create_table "user_enrollments", force: true do |t|
    t.integer  "user_id"
    t.integer  "offering_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_enrollments", ["offering_id"], name: "index_user_enrollments_on_offering_id"
  add_index "user_enrollments", ["user_id", "offering_id"], name: "index_user_enrollments_on_user_id_and_offering_id"
  add_index "user_enrollments", ["user_id"], name: "index_user_enrollments_on_user_id"

  create_table "user_question_sets", force: true do |t|
    t.integer  "user_id"
    t.integer  "question_set_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_question_sets", ["question_set_id"], name: "index_user_question_sets_on_question_set_id"
  add_index "user_question_sets", ["user_id", "question_set_id"], name: "index_user_question_sets_on_user_id_and_question_set_id"
  add_index "user_question_sets", ["user_id"], name: "index_user_question_sets_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.string   "avatar_uid"
    t.string   "avatar_name"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authentication_token"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "email_validation_token"
    t.string   "country_code",           limit: 2
    t.string   "zip"
    t.datetime "signup_finalized_at"
    t.date     "born_at"
    t.string   "city"
    t.string   "state"
    t.string   "address1"
    t.string   "cell_phone"
    t.integer  "usa_epay_customer_id"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true
  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
