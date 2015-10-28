class AddAttachmentCoverToProdutos < ActiveRecord::Migration
  def self.up
    change_table :produtos do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :produtos, :cover
  end
end
