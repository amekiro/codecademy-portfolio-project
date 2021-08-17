class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.string :title
      t.text :description
      t.string :image
      t.timestamps
    end
  end
end
