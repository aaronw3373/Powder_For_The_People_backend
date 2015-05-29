class RemoveColumnFromResort < ActiveRecord::Migration
  def change
    remove_column :resorts, :state, :text
    remove_column :resorts, :locatoin, :text
    add_column :resorts, :station, :text
  end
end

