class RemoveIndexFundIdFromConnections < ActiveRecord::Migration
  def change
    remove_column :connections, :indexfund_id
  end
end
