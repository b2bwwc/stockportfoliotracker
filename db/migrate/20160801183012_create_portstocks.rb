class CreatePortstocks < ActiveRecord::Migration
  def change
    create_table :portstocks do |t|
      t.belongs_to :portfolio
      t.belongs_to :stocks
      t.integer :number_of_shares
    end
  end
end
