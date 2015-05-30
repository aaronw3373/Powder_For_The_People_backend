class CreateResorts < ActiveRecord::Migration
  def change
    create_table :resorts do |t|
      t.string :name, null: false, unique: true
      t.integer :vertical, null: false
      t.integer :acres, null:false
      t.string :location, null:false

      t.timestamps null: false
    end
  end
end
