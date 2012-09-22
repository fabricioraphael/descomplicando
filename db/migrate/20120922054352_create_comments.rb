class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.integer :user_id
      t.text :content
      t.integer :up, :default => 0
      t.integer :down, :default => 0

      t.timestamps
    end
  end
end
