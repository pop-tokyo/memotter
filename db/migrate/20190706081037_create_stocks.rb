class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.references :users, foreign_key: true, null: false
      t.references :memo, foreign_key: true, null: false
      t.timestamps

      t.index [:user_id, :memo_id], unique: true
    end
  end
end
