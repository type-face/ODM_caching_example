class AddColumnToCache < ActiveRecord::Migration
  def change
    add_column :caches, :image, :string
  end
end
