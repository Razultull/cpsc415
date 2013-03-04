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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130304220336) do

  create_table "gymnasia", :force => true do |t|
    t.string   "Name",            :null => false
    t.string   "NumberAndStreet", :null => false
    t.string   "Town",            :null => false
    t.string   "City",            :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "Name"
    t.string   "Height"
    t.string   "Weight"
    t.integer  "Age"
    t.string   "Sex"
    t.string   "WODsTakenPartIn"
    t.string   "Location"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "personal_wods", :force => true do |t|
    t.string   "Name",                :null => false
    t.integer  "Repetitions",         :null => false
    t.integer  "WeightAmount",        :null => false
    t.string   "TimeTaken",           :null => false
    t.integer  "NumberOfDaysPerWeek", :null => false
    t.string   "PersonalBest",        :null => false
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "wods", :force => true do |t|
    t.string   "Name"
    t.integer  "Repetitions"
    t.integer  "WeightAmount"
    t.time     "TimeAlotted"
    t.integer  "NumberOfDaysPerWeek"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

end
