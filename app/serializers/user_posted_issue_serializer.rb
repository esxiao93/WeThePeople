class UserPostedIssueSerializer < ActiveModel::Serializer
  attributes :id, :isUpvote, :isDownvote, :user_id, :posted_issue_id
  # belongs_to :user
  # belongs_to :posted_issue
end
