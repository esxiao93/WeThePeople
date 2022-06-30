class CreateKeyIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :key_issues do |t|
      t.string :title
      t.text :description
      t.integer :upvote
      t.integer :downvote

      t.timestamps
    end
  end
end
