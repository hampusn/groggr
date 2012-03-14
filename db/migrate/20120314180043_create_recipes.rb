class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :description
      t.text :instruction
      t.references :drink

      t.timestamps
    end
    add_index :recipes, :drink_id
  end
end
