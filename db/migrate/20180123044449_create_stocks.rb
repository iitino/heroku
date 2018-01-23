class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.references :user, foreign_key: true
      t.string :product_name
      t.date :limit_date
      t.string :stock_zone
      t.integer :count
      t.string :category
      t.datetime :mail_sent_at

      t.timestamps
    end
    add_index :stocks, [:user_id, :created_at]
  end
end