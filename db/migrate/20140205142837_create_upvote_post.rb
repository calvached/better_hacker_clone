class CreateUpvotePost < ActiveRecord::Migration
  def change
    create_table :upvote_posts do |t|
      t.belongs_to :user
      t.belongs_to :post
      t.integer :vote
      t.timestamps
    end
  end
end
