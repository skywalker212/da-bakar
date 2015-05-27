class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|


      t.string :answer
      t.integer :user_id
      t.integer :post_id
      t.integer :comment_upvote, default: 0
      t.integer :comment_downvote, default: 0
      t.integer :parent_coment_id

      t.timestamps null: false
    end
  end
end
