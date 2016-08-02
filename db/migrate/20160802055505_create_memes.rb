class CreateMemes < ActiveRecord::Migration
  def change
    create_table :memes do |t|
      t.string :name
      t.integer :rating
      t.string :image
      t.string :description
      t.timestamps null: false
    end
  end
end
