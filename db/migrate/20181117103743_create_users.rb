class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.float :age
      t.string :gender
      t.string :avatar_link
      t.string :password
      t.string :location
      t.text :personal_msg
      t.string :skype
      t.string :linkedin
      t.string :job_title
      t.float :years_exp
      t.string :industry
      t.string :email
      t.boolean :bme
      t.boolean :lgbt
      t.boolean :share_bme
      t.boolean :share_lgbt
      t.boolean :mentor
      t.boolean :mentee

      t.timestamps
    end
  end
end
