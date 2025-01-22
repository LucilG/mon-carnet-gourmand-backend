class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :nb_people
      t.integer :prepa_time
      t.integer :cooking_time
      t.text :instructions
      t.references :collection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
