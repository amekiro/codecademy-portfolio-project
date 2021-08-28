class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.integer :icon
      t.string :category
      t.text :media
      t.text :link
      t.string :title
      t.integer :year
      t.string :material
      t.text :description
      t.timestamps
    end
  end
end
