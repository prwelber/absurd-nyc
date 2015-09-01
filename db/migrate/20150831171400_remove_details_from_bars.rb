class RemoveDetailsFromBars < ActiveRecord::Migration
  def change
    remove_column :bars, :street, :string
    remove_column :bars, :city, :string
    remove_column :bars, :state, :string
    remove_column :bars, :zip, :string
  end
end
