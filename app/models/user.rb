class User < ApplicationRecord
    has_secure_password
    has_many :connections
    has_many :requested_users, through: :connections, :source => :requested_user

    has_many :requests, foreign_key: :requested_user_id, class_name: 'Connection'
    has_many :requesting_users, through: :requests, source: :user


    has_many :stories
    has_and_belongs_to_many :events

    validates :email, uniqueness: { case_sensitive: false}

end
