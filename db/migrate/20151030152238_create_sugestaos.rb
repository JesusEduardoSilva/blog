class CreateSugestaos < ActiveRecord::Migration
  def change
    create_table :sugestaos do |t|
      t.string :usuario_id
      t.string :produto_id
      t.text :descricao

      t.timestamps null: false
    end
  end
end
