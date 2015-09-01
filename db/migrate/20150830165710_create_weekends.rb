class CreateWeekends < ActiveRecord::Migration
  def change
    create_table :weekends do |t|
      t.references :stereotype, index: true, foreign_key: true
      t.string :weekend_name
      t.string :description
      t.string :image
      t.string :street
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
