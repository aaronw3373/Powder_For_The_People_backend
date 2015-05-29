class AddLocationInfoToResorts < ActiveRecord::Migration
  def change
    add_column :resorts, :state, :text
    add_column :resorts, :location, :text
  end
end
