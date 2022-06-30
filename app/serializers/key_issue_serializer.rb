class KeyIssueSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :upvote, :downvote
end
