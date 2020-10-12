class AddRequiredToPostFields < ActiveRecord::Migration
  def up
    change_column_null :posts, :author_id, false
    change_column_null :posts, :title, false
    change_column_null :posts, :body, false
  end

  def down
    change_column_null :posts, :author_id, true
    change_column_null :posts, :title, true
    change_column_null :posts, :body, true
  end
end
