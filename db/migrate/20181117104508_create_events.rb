class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :date
      t.time :time
      t.string :address
      t.string :title

      t.timestamps
    end
  end
end
