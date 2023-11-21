class AddCopyToComics < ActiveRecord::Migration[6.1]
  def change
    add_column :comics, :link2, :string
  end
end
