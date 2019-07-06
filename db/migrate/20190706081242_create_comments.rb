class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :users, foreign_key: true
      t.references :memo, foreign_key: true
      t.text :content, null: false
      t.boolean :edit

      t.timestamps
    end
  end
end
