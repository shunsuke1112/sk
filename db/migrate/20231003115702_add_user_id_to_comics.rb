class AddUserIdToComics < ActiveRecord::Migration[6.1]
  def change
    add_column :comics, :user_id, :integer
  end
end
