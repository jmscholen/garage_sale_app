class AddItemStatus < ActiveRecord::Migration
  def change
  	add_column :items, :status, :boolean
  end
end
