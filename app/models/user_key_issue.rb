class UserKeyIssue < ApplicationRecord
  belongs_to :user
  belongs_to :key_issue
end
