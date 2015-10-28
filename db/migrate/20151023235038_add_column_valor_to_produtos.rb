class AddColumnValorToProdutos < ActiveRecord::Migration
  def change
    add_column :produtos, :valor, :decimal, :precision => 8, :scale => 2
  end
end
