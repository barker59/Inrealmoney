class AddColumnsToUnits < ActiveRecord::Migration
  def change
  	add_column :units, :distance, :string
  	add_column :units, :speed, :string
  	add_column :units, :currency, :string
  	add_column :units, :user_id, :integer
  end
end
