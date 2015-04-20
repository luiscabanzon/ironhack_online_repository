class CreateBackpacks < ActiveRecord::Migration
  def change
    create_table :backpacks do |t|
      t.string :name
      t.string :color
      t.float :capacity
      t.integer :pockets
      t.boolean :waterproof
      t.float :price
      t.string :image

      t.timestamps null: false
    end
  end
end
