class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :pin, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :pins
    add_foreign_key :comments, :users
  end
end
