class CreateAvaliacaos < ActiveRecord::Migration
  def change
    create_table :avaliacaos do |t|
      t.string :usuario_id
      t.string :produto_id
      t.integer :nota

      t.timestamps null: false
    end
  end
end
