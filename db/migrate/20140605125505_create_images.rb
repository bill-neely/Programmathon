class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :invoice
      t.date :invoicedate
      t.integer :route
      t.integer :customer
      t.string :customername
      t.integer :chain
      t.string :chainname
      t.integer :sales
      t.string :salesname
      t.string :imageurl

      t.timestamps
    end
    add_index :images, [:invoice]
    add_index :images, [:invoicedate]
    add_index :images, [:route]
    add_index :images, [:customer]
    add_index :images, [:customername]
    add_index :images, [:chain]
    add_index :images, [:chainname]
    add_index :images, [:sales]
    add_index :images, [:salesname]
  end
end
