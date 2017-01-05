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

ActiveRecord::Schema.define(version: 20170105154523) do

  create_table "journals", force: :cascade do |t|
    t.integer  "subject_id"
    t.integer  "rank"
    t.string   "full_journal_title"
    t.string   "jcr_abbreviated_title"
    t.string   "issn"
    t.integer  "total_cites"
    t.decimal  "journal_impact_factor",                    precision: 5, scale: 3
    t.decimal  "impact_factor_without_journal_self_cites", precision: 5, scale: 3
    t.decimal  "five_years_impact_factor",                 precision: 5, scale: 3
    t.decimal  "immediacy_index",                          precision: 5, scale: 3
    t.integer  "citable_items"
    t.string   "cited_half_life"
    t.string   "citing_half_life"
    t.decimal  "eigenfactor_score",                        precision: 6, scale: 5
    t.decimal  "article_influence_score",                  precision: 5, scale: 3
    t.decimal  "article_in_citable_items",                 precision: 5, scale: 2
    t.decimal  "average_journal_impact_factor_percentile", precision: 5, scale: 3
    t.decimal  "normalized_eigenfactor",                   precision: 6, scale: 4
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
  end

  add_index "journals", ["subject_id"], name: "index_journals_on_subject_id"

  create_table "subjects", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "journal_size"
    t.decimal  "sum_impact",   precision: 7, scale: 3
    t.decimal  "av_impact",    precision: 5, scale: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
