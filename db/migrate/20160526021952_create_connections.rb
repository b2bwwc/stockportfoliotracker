class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.belongs_to :portfolio
      t.belongs_to :indexfund
      t.integer :value
      t.integer :share

      t.timestamps null: false
    end
  end
end
