class AddDetailsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :review, :string
    add_column :restaurants, :display_address, :string
  end
end
