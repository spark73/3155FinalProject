class ToString < ActiveRecord::Migration[5.2]
  def change
      change_column :foods, :price, :string
  end
end
