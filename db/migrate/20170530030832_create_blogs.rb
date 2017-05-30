class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.boolean :is_cover, default: false
      t.timestamps
    end
  end
end
