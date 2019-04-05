class Fix < ActiveRecord::Migration[5.2]
  def up
      remove_column :restaurants, :text
  end
end
