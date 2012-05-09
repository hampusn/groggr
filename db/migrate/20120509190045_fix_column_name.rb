class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :ingredients, :ammount, :amount
  end
end
