class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :owner
      t.string :background_image

      t.timestamps
    end
  end
end
