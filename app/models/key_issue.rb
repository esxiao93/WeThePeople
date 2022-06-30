class KeyIssue < ApplicationRecord
  has_many :user_key_issues
  has_many :users, through: :user_key_issues
end
