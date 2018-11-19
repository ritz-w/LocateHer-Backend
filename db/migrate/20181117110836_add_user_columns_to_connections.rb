class AddUserColumnsToConnections < ActiveRecord::Migration[5.2]
  def change
    add_column :connections, :user_id, :integer
    add_column :connections, :requested_user_id, :integer
    add_index :connections, [:user_id, :requested_user_id], unique: true
  end
end
