class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|


      t.string :question
      t.string :description
      t.string :type
      #t.integer :upvote, default: 0
      #t.integer :downvote, default: 0
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
