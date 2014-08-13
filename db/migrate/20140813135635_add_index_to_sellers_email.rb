class AddIndexToSellersEmail < ActiveRecord::Migration
  def change
  	add_index :sellers, :email, unique: true
  end
end
