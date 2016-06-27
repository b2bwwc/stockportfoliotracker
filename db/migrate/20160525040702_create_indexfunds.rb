class CreateIndexfunds < ActiveRecord::Migration
  def change
    create_table :indexfunds do |t|
      t.string :name, null: false
      t.integer :value
      t.references :admin

      t.timestamps null: false
    end
  end
end