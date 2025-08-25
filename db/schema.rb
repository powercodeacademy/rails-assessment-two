ActiveRecord::Schema[7.1].define(version: 2025_08_25_174315) do
  create_table "sweets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "vendor_sweets", force: :cascade do |t|
    t.integer "vendor_id", null: false
    t.integer "sweet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sweet_id"], name: "index_vendor_sweets_on_sweet_id"
    t.index ["vendor_id"], name: "index_vendor_sweets_on_vendor_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  add_foreign_key "vendor_sweets", "sweets"
  add_foreign_key "vendor_sweets", "vendors"
end
