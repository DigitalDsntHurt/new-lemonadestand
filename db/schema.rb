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

ActiveRecord::Schema.define(version: 20170329203332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educators", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "phone"
    t.string   "school_job_function"
    t.string   "school_name"
    t.string   "school_location"
    t.string   "topics_of_interest"
    t.string   "message"
    t.string   "other"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "phone"
    t.string   "current_title"
    t.string   "current_project"
    t.string   "bio"
    t.string   "topics_of_expertise"
    t.string   "location"
    t.string   "travel_distance"
    t.boolean  "agreed_to_tos"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
