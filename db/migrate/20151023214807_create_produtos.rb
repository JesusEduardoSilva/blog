class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :titulo
      t.text :descricao

      t.timestamps null: false
    end
  end
end
