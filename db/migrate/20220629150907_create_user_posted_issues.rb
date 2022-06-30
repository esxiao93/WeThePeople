class CreateUserPostedIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :user_posted_issues do |t|
      t.boolean :isUpvote
      t.boolean :isDownvote
      t.references :user, null: false, foreign_key: true
      t.references :posted_issue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
