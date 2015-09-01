class AddDetailsToBars < ActiveRecord::Migration
  def change
    add_column :bars, :review, :string
    add_column :bars, :display_address, :string
  end
end
