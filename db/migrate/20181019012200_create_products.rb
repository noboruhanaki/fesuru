class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.string :name_kana
      t.integer :price_gteq
      t.integer :purchase_cost_gteq

      t.timestamps
    end
  end
end
