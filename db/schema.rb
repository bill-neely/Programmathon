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

ActiveRecord::Schema.define(version: 20140605125505) do

  create_table "images", force: true do |t|
    t.integer  "invoice"
    t.date     "invoicedate"
    t.integer  "route"
    t.integer  "customer"
    t.string   "customername"
    t.integer  "chain"
    t.string   "chainname"
    t.integer  "sales"
    t.string   "salesname"
    t.string   "imageurl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["chain"], name: "index_images_on_chain"
  add_index "images", ["chainname"], name: "index_images_on_chainname"
  add_index "images", ["customer"], name: "index_images_on_customer"
  add_index "images", ["customername"], name: "index_images_on_customername"
  add_index "images", ["invoice"], name: "index_images_on_invoice"
  add_index "images", ["invoicedate"], name: "index_images_on_invoicedate"
  add_index "images", ["route"], name: "index_images_on_route"
  add_index "images", ["sales"], name: "index_images_on_sales"
  add_index "images", ["salesname"], name: "index_images_on_salesname"

end
