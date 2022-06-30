class UserKeyIssueSerializer < ActiveModel::Serializer
  attributes :id, :isUpvote, :isDownvote, :user_id, :key_issue_id
  # belongs_to :user
  # belongs_to :key_issue
end
