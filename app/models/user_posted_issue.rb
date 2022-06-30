class UserPostedIssue < ApplicationRecord
  belongs_to :user
  belongs_to :posted_issue
end
