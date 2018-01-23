class InitializeDatabase < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string  :name, null: false
      t.integer :price
      t.integer :sell
      t.json    :abilities, null: false, default: []
      t.json    :users, null: false, default: []
      t.json    :find_sites, null: false, default: []
      t.json    :buy_sites, null: false, default: []
      t.json    :synth_sites, null: false, default: []
      t.uuid    :ingredient_1_id
      t.uuid    :ingredient_2_id

      t.timestamps null: false
    end
    add_index :items, :ingredient_1_id
    add_index :items, :ingredient_2_id
  end
end
