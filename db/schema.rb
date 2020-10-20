# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_28_201512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.integer "latitude"
    t.integer "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.bigint "movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_favorites_on_movie_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "futures", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.bigint "movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_futures_on_movie_id"
    t.index ["user_id"], name: "index_futures_on_user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "tmdb_id"
    t.string "original_title"
    t.string "overview"
    t.string "poster_path"
    t.string "release_date"
    t.string "runtime"
    t.string "tagline"
    t.string "genre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "email"
    t.integer "phone_number"
    t.string "photoURL"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "watches", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.bigint "movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_watches_on_movie_id"
    t.index ["user_id"], name: "index_watches_on_user_id"
  end

  add_foreign_key "favorites", "movies"
  add_foreign_key "favorites", "users"
  add_foreign_key "futures", "movies"
  add_foreign_key "futures", "users"
  add_foreign_key "watches", "movies"
  add_foreign_key "watches", "users"
end
