class CongressionalMemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :political_party, :years_in_office, :image_url
  # belongs_to :user
end
