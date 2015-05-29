class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :privileges, :string
  end
end
