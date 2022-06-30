class CreateUserKeyIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :user_key_issues do |t|
      t.boolean :isUpvote
      t.boolean :isDownvote
      t.references :user, null: false, foreign_key: true
      t.references :key_issue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
