class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user, null: false
      t.integer :resort, null: false

      t.timestamps null: false
    end
  end
end
