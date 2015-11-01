class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :second_name
      t.string :username
      t.string :email
      t.text :bio
      t.string :thumbnail
      t.timestamps null: false
    end
  end
end
