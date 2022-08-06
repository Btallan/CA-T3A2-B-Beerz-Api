class AddProcessImgToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :process_img, :image
  end
end
