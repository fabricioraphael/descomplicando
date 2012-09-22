class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.date :birthday
      t.string :address
      t.string :phone
      t.string :works_at
      t.string :site
      t.text :bio

      t.timestamps
    end
  end
end
