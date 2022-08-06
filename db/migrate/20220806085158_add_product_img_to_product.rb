class AddProductImgToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :product_img, :image
  end
end
