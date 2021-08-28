class CreateSketches < ActiveRecord::Migration[6.1]
  def change
    create_table :sketches do |t|
      t.integer :icon
      t.text :media
      t.references :artwork
      t.timestamps
    end
  end
end
