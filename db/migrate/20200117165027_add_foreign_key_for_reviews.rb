class AddForeignKeyForReviews < ActiveRecord::Migration[6.0]
  def change
    add_column(:reviews, :product_id, :integer)
    add_foreign_key :reviews, :products
  end
end
