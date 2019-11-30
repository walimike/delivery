class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.text :url
      t.integer :price
      t.integer :quantity
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
