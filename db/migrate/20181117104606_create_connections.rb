class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.boolean :accepted
      t.boolean :mentor
      t.boolean :mentee

      t.timestamps
    end
  end
end
