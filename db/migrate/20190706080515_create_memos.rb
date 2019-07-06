class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.references :user, foreign_key: true, null: false
      t.text :content, null: false
      t.boolean :edit, default: false
      t.timestamps
    end
  end
end
