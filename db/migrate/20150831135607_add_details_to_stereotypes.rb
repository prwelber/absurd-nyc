class AddDetailsToStereotypes < ActiveRecord::Migration
  def change
  	add_column :stereotypes, :tagline, :string
  	add_column :stereotypes, :job, :string
  	add_column :stereotypes, :friends, :string
  end
end
