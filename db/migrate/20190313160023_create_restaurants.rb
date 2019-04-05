class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :text
      t.string :image

      t.timestamps
    end
  end
end
