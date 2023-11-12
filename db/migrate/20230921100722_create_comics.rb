class CreateComics < ActiveRecord::Migration[6.1]
  def change
    create_table :comics do |t|
      t.string :name
      t.string :genre
      t.string :company
      t.text :about
      t.text :content
      t.text :link

      t.timestamps
    end
  end
end
