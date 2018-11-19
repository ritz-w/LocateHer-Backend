class AddAvailabilityAndAdviseOnColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :availability, :string
    add_column :users, :advises_on, :string
    add_column :connections, :expectations_message, :text
    add_column :connections, :request_message, :text

  end
end
