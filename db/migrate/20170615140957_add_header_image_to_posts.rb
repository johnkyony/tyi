class AddHeaderImageToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :header_image, :string
  end
end
