class CreateStereotypes < ActiveRecord::Migration
  def change
    create_table :stereotypes do |t|
      t.string :stereotype_name
      t.string :neighborhood_name

      t.timestamps null: false
    end
  end
end
