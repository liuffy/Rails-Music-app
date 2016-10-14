class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment_text, null: false
      t.integer :track_id, null:false
      t.integer :user_id, null:false
      
      t.timestamps
    end
  end
end
