class CreateBackpacks < ActiveRecord::Migration
  def change
    create_table :backpacks do |t|
      t.string :name
      t.float :capacity
      t.integer :pockets
      t.boolean :waterproof
      t.string :image

      t.timestamps null: false
    end
  end
end
