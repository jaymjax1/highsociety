class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code
      t.text :about_me
      t.string :profile_image
      t.string :background_image

      t.timestamps
    end
  end
end
