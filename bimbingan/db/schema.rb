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

ActiveRecord::Schema.define(version: 2019_08_06_062551) do

  create_table "dosens", force: :cascade do |t|
    t.string "nama_dosbing"
    t.string "alamat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jurusans", force: :cascade do |t|
    t.string "nama_jurusan"
    t.string "prodi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lectures", force: :cascade do |t|
    t.integer "id_dos"
    t.string "nama"
    t.string "alamat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mahasiswas", force: :cascade do |t|
    t.string "nama"
    t.string "kelas"
    t.string "alamat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "majors", force: :cascade do |t|
    t.integer "id_jur"
    t.string "jurusan"
    t.string "prodi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "murids", force: :cascade do |t|
    t.integer "nim"
    t.string "nama"
    t.string "kelas"
    t.string "alamat"
    t.integer "major_id"
    t.integer "lecture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer "id_mhs"
    t.string "nama"
    t.string "kelas"
    t.string "alamat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
