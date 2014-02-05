class CreateUpvoteComment < ActiveRecord::Migration
  def change
    create_table :upvote_comments do |t|
      t.belongs_to :user
      t.belongs_to :comment
      t.integer :vote
      t.timestamps
    end
  end
end
