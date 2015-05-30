class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :username, null: false, unique: true
      t.string :privileges, null: false
      t.string :password_digest
      t.string :token


      t.timestamps null: false
    end
  end
end
