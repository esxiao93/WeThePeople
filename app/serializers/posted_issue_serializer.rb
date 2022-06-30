class PostedIssueSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :upvote, :downvote

end
