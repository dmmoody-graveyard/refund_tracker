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

ActiveRecord::Schema.define(version: 20150206194328) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calls", force: :cascade do |t|
    t.date    "date"
    t.text    "note"
    t.integer "refund_id"
  end

  create_table "cancellations", force: :cascade do |t|
    t.date    "date"
    t.text    "reason"
    t.integer "refund_id"
  end

  create_table "cases", force: :cascade do |t|
    t.string "name"
    t.string "number"
  end

  create_table "certs", force: :cascade do |t|
    t.string  "firstname"
    t.string  "lastname"
    t.string  "member_id"
    t.integer "case_id"
  end

  create_table "claimants", force: :cascade do |t|
    t.string  "firstname"
    t.string  "lastname"
    t.string  "telephone"
    t.integer "cert_id"
  end

  create_table "legals", force: :cascade do |t|
    t.date    "date"
    t.integer "refund_id"
  end

  create_table "letters", force: :cascade do |t|
    t.date    "date"
    t.integer "refund_id"
  end

  create_table "physicians", force: :cascade do |t|
    t.string  "name"
    t.string  "sub_tin"
    t.string  "telephone"
    t.integer "provider_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "tin"
  end

  create_table "reasons", force: :cascade do |t|
    t.string "reason_type"
  end

  create_table "receivables", force: :cascade do |t|
    t.date    "received"
    t.decimal "amount"
    t.date    "posted"
    t.integer "refund_id"
  end

  create_table "refunds", force: :cascade do |t|
    t.date    "date"
    t.integer "responsible_id"
    t.integer "claimant_id"
    t.integer "physician_id"
    t.decimal "amount"
    t.integer "reason_id"
  end

  create_table "responsibles", force: :cascade do |t|
    t.string "request_to"
  end

end
