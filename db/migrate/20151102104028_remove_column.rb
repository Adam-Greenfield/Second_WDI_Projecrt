class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :themes, :link_id
    remove_column :themes, :user_id
  end
end
