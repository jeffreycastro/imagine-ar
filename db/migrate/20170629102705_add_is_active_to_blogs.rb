class AddIsActiveToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :is_active, :boolean, default: true
  end
end
