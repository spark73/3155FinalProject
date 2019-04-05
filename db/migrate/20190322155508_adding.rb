class Adding < ActiveRecord::Migration[5.2]
  def change
      add_column :foods, :price, :double
  end
end
