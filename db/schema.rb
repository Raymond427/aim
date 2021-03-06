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

ActiveRecord::Schema.define(version: 20160903151734) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.text     "message"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "chapters", force: :cascade do |t|
    t.string   "school"
    t.string   "acronym"
    t.string   "logo"
    t.string   "email"
    t.text     "donation_snippet"
    t.string   "facebook_url"
    t.string   "instagram_url"
    t.string   "twitter_url"
    t.string   "linkedin_url"
    t.string   "youtube_url"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "guests", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "chapter"
    t.string   "date"
    t.text     "message"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "mail_blasters", force: :cascade do |t|
    t.integer  "chapter_id"
    t.string   "to",         default: [],              array: true
    t.string   "subject"
    t.string   "from"
    t.string   "heading"
    t.text     "body"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["chapter_id"], name: "index_mail_blasters_on_chapter_id", using: :btree
  end

  create_table "members", force: :cascade do |t|
    t.integer  "chapter_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "password_digest"
    t.string   "linkedin_photo_url"
    t.string   "thumbnail"
    t.string   "role",                   default: "general"
    t.string   "linkedinurl"
    t.string   "major"
    t.string   "graduation_date"
    t.boolean  "is_executive",           default: false
    t.boolean  "subscribed"
    t.string   "executive_position"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.index ["chapter_id"], name: "index_members_on_chapter_id", using: :btree
  end

  create_table "news", force: :cascade do |t|
    t.integer  "chapter_id"
    t.string   "title"
    t.string   "date"
    t.string   "mediatype"
    t.string   "youtube_url"
    t.string   "description"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.index ["chapter_id"], name: "index_news_on_chapter_id", using: :btree
  end

end
