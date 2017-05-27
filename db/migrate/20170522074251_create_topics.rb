class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.string :title
      t.string :url
      t.integer :tag_id
      t.timestamps null: false
    end
  end
end
