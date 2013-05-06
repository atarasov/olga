class AddCategoryImage < ActiveRecord::Migration
  def up
    add_attachment :categories, :category_image
  end

  def down
    remove_attachment :categories, :category_image
  end
end
