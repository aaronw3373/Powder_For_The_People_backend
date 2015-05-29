class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name, null: false
      t.text :username, null: false
      t.text :password

      t.timestamps null: false
    end
  end
end
