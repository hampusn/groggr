class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :ammount
      t.references :recipe
      t.references :item

      t.timestamps
    end
    add_index :ingredients, :recipe_id
    add_index :ingredients, :item_id
  end
end
