class ConnectionsSerializer < ActiveModel::Serializer
  attributes :id, :user, :requested_user, :expectations_message, :request_message, :accepted
end
