class RemoveColumnFromBids < ActiveRecord::Migration[7.0]
  def change
    remove_column :bids, :title
    remove_column :bids, :description
  end
end
