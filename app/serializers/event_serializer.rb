class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :address, :image
end
