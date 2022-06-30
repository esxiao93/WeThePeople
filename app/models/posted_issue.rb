class PostedIssue < ApplicationRecord
    has_many :user_posted_issues
    has_many :users, through: :user_posted_issues
end
