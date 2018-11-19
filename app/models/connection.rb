class Connection < ApplicationRecord
    belongs_to :user
    belongs_to :requested_user, class_name: 'User'

    validate :realism

    private
  
    def realism
      return unless user_id == requested_user_id
      errors.add :user, 'Only a solipsist would follow themselves.'
    end
end
