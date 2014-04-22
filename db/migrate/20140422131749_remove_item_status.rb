class RemoveItemStatus < ActiveRecord::Migration
  def change
  	remove_column :items, :status
  end
end
