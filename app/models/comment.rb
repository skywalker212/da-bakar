class Comment < ActiveRecord::Base

	belongs_to :user
	belongs_to :post

	belongs_to :comment, foreign_key: "parent_comment_id"
	has_many :comments, foreign_key: "parent_comment_id"

end
