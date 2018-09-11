class AddAuthorIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :author_id, :integer
    add_column :posts, :description, :string
    add_column :posts, :inventory, :integer
  end
end
