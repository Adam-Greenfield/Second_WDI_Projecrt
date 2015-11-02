class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :name
      t.integer :link_id
      t.integer :user_id
      t.text :description
      t.timestamps null: false
    end
  end
end
