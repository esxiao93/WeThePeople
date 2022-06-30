class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :district, :username, :password_digest, :isCongressional

  has_many :congressional_members
end
