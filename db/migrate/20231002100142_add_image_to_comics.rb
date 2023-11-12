class AddImageToComics < ActiveRecord::Migration[6.1]
  def change
    add_column :comics, :image, :string
  end
end
