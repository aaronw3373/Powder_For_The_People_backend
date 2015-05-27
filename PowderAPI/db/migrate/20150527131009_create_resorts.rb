class CreateResorts < ActiveRecord::Migration
  def change
    create_table :resorts do |t|
      t.text :name, null: false
      t.integer :vertical, null: false
      t.integer :acers, null: false

      t.timestamps null: false
    end
  end
end
