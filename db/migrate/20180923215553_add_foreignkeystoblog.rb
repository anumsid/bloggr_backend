class AddForeignkeystoblog < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :comments, :blogs
    add_foreign_key :blogs, :users
  end
end
