class AddRelationshipToPostsAndAuthors < ActiveRecord::Migration
  def up
    change_table :posts do |t|
      t.remove :author
      t.references :author
    end

    add_index :posts, :author_id
  end

  def down
    remove_index :posts, :author_id

    change_table :posts do |t|
      t.string :author
      t.remove :author_id
    end
  end
end
