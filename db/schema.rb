# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 11) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "date"
  end

  create_table "friends", :force => true do |t|
    t.string "name"
    t.string "email"
  end

  create_table "golfers", :force => true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.integer "team_id"
  end

  create_table "jobs", :force => true do |t|
    t.string "position"
    t.text   "description"
  end

  create_table "schedules", :force => true do |t|
    t.string "range"
    t.string "sunday"
    t.string "monday"
    t.string "tuesday"
    t.string "wednesday"
    t.string "thursday"
    t.string "friday"
    t.string "saturday"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id"
    t.text     "data"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"

  create_table "specials", :force => true do |t|
    t.string "day"
    t.string "lunch"
    t.string "dinner"
  end

  create_table "suggestions", :force => true do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.text   "comments"
  end

  create_table "teams", :force => true do |t|
    t.string "name"
  end

  create_table "tournaments", :force => true do |t|
    t.string "team_name"
    t.string "team_paid"
    t.string "player1"
    t.string "player1_paid"
    t.string "player2"
    t.string "player2_paid"
    t.string "player3"
    t.string "player3_paid"
    t.string "player4"
    t.string "player4_paid"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

end
