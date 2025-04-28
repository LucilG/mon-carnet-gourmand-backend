class RenameUnityColumnInIngredient < ActiveRecord::Migration[7.1]
  def change
    rename_column :ingredients, :unity, :unit
  end
end
