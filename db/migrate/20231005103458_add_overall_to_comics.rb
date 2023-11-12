class AddOverallToComics < ActiveRecord::Migration[6.1]
  def change
    add_column :comics, :overall, :integer
  end
end
