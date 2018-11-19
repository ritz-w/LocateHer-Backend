class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :location, :job_title, :mentor, :mentee, :personal_msg, :avatar_link, :availability, :advises_on
  has_many :connections
  has_many :requests
  class ConnectionsSerializer < ActiveModel::Serializer
    attributes :id, :user, :requested_user, :expectations_message, :request_message, :accepted
  end
  
end
