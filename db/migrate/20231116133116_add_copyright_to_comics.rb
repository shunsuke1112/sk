class AddCopyrightToComics < ActiveRecord::Migration[6.1]
  def change
    add_column :comics, :copyright, :string
  end
end
