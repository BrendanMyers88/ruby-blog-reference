class AddRequiredToAuthorFields < ActiveRecord::Migration
  def up
    change_column_null :authors, :name, false
    change_column_null :authors, :position, false
  end
  def down
    change_column_null :authors, :name, true
    change_column_null :authors, :position, true
  end
end
