class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :symbol, null: false
      t.float :price
      t.float :volume
      t.string :name
      t.string :order
      t.references :portfolio

      t.timestamps null: false
    end
  end
end
