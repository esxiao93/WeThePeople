class User < ApplicationRecord
    has_many :congressional_members
    has_many :user_key_issues
    has_many :user_posted_issues
    has_many :key_issues, through: :user_key_issues
    has_many :posted_issues, through: :user_posted_issues

    has_secure_password

    validates :username, presence: true, uniqueness: true
end
