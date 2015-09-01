class RemoveDetailsFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :street, :string
    remove_column :restaurants, :city, :string
    remove_column :restaurants, :state, :string
    remove_column :restaurants, :zip, :string
  end
end
