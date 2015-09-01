class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.references :user
      t.references :restaurant
      t.references :bar
      t.references :weekend

      t.timestamps null: false
    end
  end
end
