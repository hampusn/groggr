class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :sb_article_number

      t.timestamps
    end
  end
end
