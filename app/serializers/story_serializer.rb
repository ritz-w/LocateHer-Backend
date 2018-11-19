class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :image, :user, :date
end
